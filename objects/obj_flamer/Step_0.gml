///@description Main

//Event Inherited

event_inherited();

#region Friction
if ((!childPauseHard) and ((grounded) or (!hasYCollision))) hsp = scr_Friction(hsp,decel);
#endregion

//Hurt Player

scr_Enemy_HurtsPlayer(dmg);

//idle state:

//move around sticking to walls, if the player is 3-4 characters away, 
//move slowly to the player's x, move faster to the player's y, when matching player y, 
//switch to flame state and charge at the player. Move through walls when doing this

if (!childPause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	var playerInRange = false;
	var playerIsDiagonal = false;
	var playerDir = 0;
	var playerDirOffset = 1
	var attackSweetSpot = false;
	var playerXDir = 1;
	var playerXDistance = 0;
	
	if (instance_exists(obj_Player))
	{
		playerInRange = collision_circle(x,y,viewRange,obj_Player,1,1)!= noone;
		playerIsDiagonal = (abs(obj_Player.y-y) >= 48); //if the player is more than 8 pixels higher or lower than LOVEY
		playerDir = point_direction(x,y,obj_Player.x,obj_Player.y);
		playerXDir = sign(obj_Player.x-x);
		playerDirOffset = sign((obj_Player.x-playerXDir*64)-x);
		playerXDistance = abs(obj_Player.x-x);
		attackSweetSpot = abs((obj_Player.x-playerXDir*64)-x) <= 12 && (abs(obj_Player.y-y)<=12);
	}
	
	//States
	
	switch (state)
	{
		//Move Around Walls And Burst
		
		case 0:
		if (attackState == 0)
		{
			hasXCollision = true;
			hasYCollision = true;
			hasGravity = true;
			var gridW = 24;
			var gridH = 24;
			var ldx = 8;
			var rdx = 8;
			var tdy = 8;
			var bdy = 8;
			var tries = 5;
			var spd = movespeed * dirX;
			
			var eps = math_get_epsilon();
			math_set_epsilon(0);
			
			var t = abs(spd);
			while t > 0 {
				var d;
				switch (moveDir + (1 - sign(spd)) * 90) % 360 {
				case 0:
				    d = min(t, floor((x - ldx) / gridW + 1) * gridW - (x - ldx), floor((x + rdx) / gridW + 1) * gridW - (x + rdx));
				    break;
				case 90:
				    d = min(t, (y - tdy) - ceil((y - tdy) / gridH - 1) * gridH, (y + bdy) - ceil((y + bdy) / gridH - 1) * gridH);
				    break;
				case 180:
				    d = min(t, (x - ldx) - ceil((x - ldx) / gridW - 1) * gridW, (x + rdx) - ceil((x + rdx) / gridW - 1) * gridW);
				    break;
				case 270:
				    d = min(t, floor((y - tdy) / gridH + 1) * gridH - (y - tdy), floor((y + bdy) / gridH + 1) * gridH - (y + bdy));
				    break;
				}
				
				if x == round(x) && y == round(y)
				&& place_meeting(round(x + lengthdir_x(sign(spd), moveDir)), round(y + lengthdir_y(sign(spd), moveDir)), obj_Wall) {
				    moveDir = (moveDir + (2 - sign(spd)) * 90) mod 360;
				    x = round(x);
				    y = round(y);
				    tries -= 1;
				    if tries == 0 {
				        t = 0;
				    }
				} else {
				    var dx = lengthdir_x(d * sign(spd), moveDir);
				    var dy = lengthdir_y(d * sign(spd), moveDir);
				    if dx == 0 && dy == 0 {
				        x = round(x);
				        y = round(y);
				    } else {
				        x += dx;
				        y += dy;
				    }
				    t -= d;
				    tries = 5;
					
				    if x == round(x) && y == round(y)
				    && !place_meeting(round(x + dcos(moveDir - 90)), round(y - dsin(moveDir - 90)), obj_Wall)
				    && place_meeting(round(x + dcos(moveDir - 90) - lengthdir_x(sign(spd), moveDir)), round(y - dsin(moveDir - 90) - lengthdir_y(sign(spd), moveDir)), obj_Wall) {
				        moveDir = (moveDir + (2 + sign(spd)) * 90) mod 360;
				    }
					
					if(!playerIsDiagonal && playerInRange ){
						image_index = 0;
						vsp = -10;
						hsp = 0;
						attackState = 1;
					}
				}
			}
								
					if(!playerIsDiagonal && playerInRange ){
						image_index = 0;
						vsp = -6;
						hsp = 0;
						attackState = 1;
					}
			math_set_epsilon(eps);
		}
		else if (attackState == 1)//Jump into the air
		{
			hasXCollision = false;
			hasYCollision = false;
			hasGravity = false;
			var grv = .25;
			vsp+=grv;
			
			if(vsp >1){//if fallen down a bit, switch to chasing a side of the player
				attackState = 2;	
				vsp = 0;
			}
		}
		else if (attackState == 2)//move to the right or left, windup, then attack
		{
			if(playerXDir != 0)image_xscale = playerXDir;

			//disable collisions
			hasXCollision = false;
			hasYCollision = false;
			hasGravity = false;
			var movespd = 1;
			//move to the right or left of player slowly 
			

			if(attackSweetSpot){//if in the right spot, wait and then attack
					//windup and go
					attackAlarm --;
					if(attackAlarm <= 0){
						attackState = 3;
						attackAlarm = room_speed*3;
						hsp = -lengthdir_x(3,playerDir);
						if (audio_is_playing(snd_Flamer)) audio_stop_sound(snd_Flamer);
						audio_play_sound(snd_Flamer,0,false);
					}
			}else{//chase the player slowly
				attackAlarm = room_speed/8;//reset the alarm
				if(abs(64-playerXDistance) > 6) hsp = movespd*playerDirOffset;
				vsp = lengthdir_y(movespd*2,playerDir);
				
			}
			
			
		}else if(attackState == 3){//windup 
			
			hsp*= .965;
			
			if(abs(hsp) <=.25){//if slow enough, charge the player
				attackState = 4;
				attackAlarm = room_speed;
				hsp = lengthdir_x(4,playerDir);
				vsp = 0;
			}
			if (particleTimer == -1) particleTimer = particleTimerMax;

		}else if(attackState == 4){//charge the player
			image_xscale = sign(hsp);
			hsp = 3*image_xscale;
			vsp = 0;
			attackAlarm--;
			if(attackAlarm<=0){
				attackState = 5;
				hsp /=2;
				vsp = -2;
				attackAlarm = room_speed/2;
			}
		}else if(attackState == 5){//move up and diagonal
			attackAlarm --;
			sprite_index = sprReady;
			image_xscale = sign(hsp);
			if(attackAlarm<= 0){
				attackState = 1;
			}
		}
		//Animation
		
		if ((hurt) and (sprHurt != -1))
		{
			image_speed = 1;
			sprite_index = sprHurt;
			//change the direction of the spin
		}
		else
		{
			image_speed = 1;
			
			switch (attackState)
			{
				case 0:
				case 1://windup
				sprite_index = sprIdle;
				break;
				

				case 2://windup
				case 3://windup
				sprite_index = sprReady;
				break;
				
				case 4://attack
				sprite_index = sprAttack;
				break;
			}
		}
		break;
	}
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var par = instance_create_depth(x - (6 * dirX),y + (irandom_range(8,-8)),depth - 1,obj_Particle);
	    par.sprite_index = spr_Particle_Fire6;
	    par.direction = irandom_range(-10,10) + (dirX * 180);
		var angle = 90 - par.direction;
		if (angle > 360) angle -= 360;
		if (angle < 0) angle += 360;
	    par.image_angle = angle;
	    par.spdBuiltIn = irandom_range(1,3);
		par.destroyAfterAnimation = true;
		par.paletteSpriteIndex = paletteIndex;
		par.paletteIndex = 1;
		particleTimer = -1;
	}
}
else
{
	image_speed = 0;
}