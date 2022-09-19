///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Flamer_Normal_Idle;
		sprReady = spr_Flamer_Normal_Ready;
		sprAttack = spr_Flamer_Normal_Attack;
		sprHurt = spr_Flamer_Normal_Hurt;
		break;
	}
}

//Event Inherited

event_inherited();

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//States
	
	switch (state)
	{
		//Move Around Walls And Burst
		
		case 0:
		if (attackState == 0)
		{
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
				}
			}
			
			math_set_epsilon(eps);
		}
		else if (attackState == 1)
		{
			hsp = lengthdir_x(-movespeed,playerDir);
			vsp = lengthdir_y(-movespeed,playerDir);
		}
		else if (attackState == 2)
		{
			movespeed += .05;
			hsp = lengthdir_x(movespeed,playerDir);
			vsp = lengthdir_y(movespeed,playerDir);
			
			if (particleTimer == -1) particleTimer = particleTimerMax;
		}
		
		//Animation
		
		if ((hurt) and (sprHurt != -1))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			image_speed = 1;
			
			switch (attackState)
			{
				case 0:
				sprite_index = sprIdle;
				break;
				
				case 1:
				sprite_index = sprReady;
				break;
				
				case 2:
				sprite_index = sprAttack;
				break;
			}
		}
		break;
	}
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		switch (attackState)
		{
			case 0:
			var nearestPlayer = -1;
			nearestPlayer = instance_nearest(x,y,obj_Player);
			if (nearestPlayer != -1) playerDir = point_direction(x,y,nearestPlayer.x,nearestPlayer.y);
			
			movespeed /= 2;
			attackTimer = attackTimerMin;
			break;
			
			case 1:
			if (audio_is_playing(snd_Flamer)) audio_stop_sound(snd_Flamer);
			audio_play_sound(snd_Flamer,0,false);
			
			movespeed *= 2;
			attackTimer = -1;
			break;
		}
		attackState += 1;
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
	shakeX = 0;
	shakeY = 0;
}