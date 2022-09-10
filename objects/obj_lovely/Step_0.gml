///@description Main

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_Lovely_Normal_Face;
		sprAttack = spr_Lovely_Normal_Face_Attack;
		sprAttackDiagonal = spr_Lovely_Normal_Face_Attack_Diagonal;
		sprFaceIdle = spr_Lovely_Normal_Eyes_Blink;
		sprFaceWink = spr_Lovely_Normal_Eyes_Wink;
		sprFaceDamage = spr_Lovely_Normal_Eyes_Damaged;
		sprBalls = spr_Lovely_Normal_Balls;
		sprHurt = -1;
		break;
		#endregion
	}
	spriteIndex = sprIdle;
	sprFace = sprFaceIdle;
}
#endregion

#region Event Inherited
event_inherited();
#endregion

if (!global.pause)
{
	#region Variables
	var playerInRange = false;
	var playerIsDiagonal = false;
	var playerDir = 0;
	var playerXscale = 1;
	var playerIsStraightAbove = false;
	
	if (instance_exists(obj_Player))
	{
		playerInRange = collision_circle(originX,originY,viewRange,obj_Player,1,1)!= noone;
		playerIsDiagonal = (abs(obj_Player.y-originY) >= 32 && abs(obj_Player.x-originX) > 32); //if the player is more than 8 pixels higher or lower than LOVEY
		playerIsStraightAbove = (abs(obj_Player.y-originY) >= 32 && abs(obj_Player.x-originX) <= 32);
		playerDir = point_direction(originX,originY,obj_Player.x,obj_Player.y);
		playerXscale = sign(obj_Player.x-x);
	}
	#endregion
	
	#region Get Inhaled
	if (place_meeting(x,y,obj_InhaleMask)) shakeX = 2;
	#endregion
	
	#region Hurt Player
	if ((playerInRange) and (!hurt)) scr_Enemy_HurtsPlayer(dmg);
	#endregion
	
	#region Hurt State
	if (hurt) attackNumber = state_damaged;
	#endregion
	
	#region Idle Bobbing
	sinValX += BounceHsp;
	sinValY += BounceVsp;
	#endregion
	
	#region States
	switch (attackState)
	{
		#region Normal Movement
		case 0:
		switch (attackNumber)
		{
			case state_idle:
			var idealPosX = originX + sin((pi / 2) + sinValX) * maxXTravel;
			var idealPosY = originY + sin(sinValY * 2 + pi) * maxYTravel;
	
			x += (idealPosX - x) * accel;
			y += (idealPosY - y) * accel;
			dirX = playerXscale;
	
			if (playerInRange)
			{
					attackTimer--;
					if(attackTimer<= 0)
					{
						attackNumber = state_windup;
						windupTimer = windupTimerMax;
						spriteIndex = sprAttack;
						windupRange = 0;
						if (playerIsDiagonal) spriteIndex = sprAttackDiagonal;
					}
			}
			else
			{
				attackTimer = attackTimerMax;//reset attack timer	
			}
		
				//handle face
				faceTimer--;
				if(faceTimer<=0){
					if(sprFace = sprFaceWink){//make wink if not winking make not winking if winking
						sprFace = sprFaceIdle;
						sprFaceIndex = 0;
						faceTimer = faceTimerMax;
					}else{
						sprFace = sprFaceWink;	
						sprFaceIndex = 0;
						faceTimer = faceTimerMax/2;
					}
				}
		
				faceBlinkTimer--;
				if(faceBlinkTimer <= 0 && sprFace == sprFaceIdle){
					sprFaceIndex+= .15;
					if(sprFaceIndex >=3){
						sprFaceIndex = 0;
						faceBlinkTimer = faceBlinkTimerMax;	
					}
				}else if(faceBlinkTimer<= faceBlinkTimerMax/2 && sprFace == sprFaceWink){
					sprFaceIndex = 1;	
					if(faceBlinkTimer<=0)faceBlinkTimer = faceBlinkTimerMax;	
				}else{
					sprFaceIndex = 0;	
				}
			break;
	
			case state_attack:
					//launch the enemy at the player and pull them away when they get too far
				attackRange += attackSpeed;
				attackRange = clamp(attackRange,0,attackRangeMax);
				if(attackRange < attackRangeMax){
					var idealPosX = originX+lengthdir_x(attackRangeMax,playerDir);
					var idealPosY =  originY+lengthdir_y(attackRangeMax,playerDir);
					image_index = 1;
				}else if(!caughtKirby){ //retreat to center
						var idealPosX = originX;
						var idealPosY = originY;
						image_index = 0;
				}
		
			//x+=hsp;
			//y+=vsp;
				x += (idealPosX-x)*accel;
				y += (idealPosY-y)*accel;
			if ((attackRange >= attackRangeMax && point_distance(x,y,idealPosX,idealPosY) < 6))
			{
				stallTimer --;
				spriteIndex = sprAttack;
				image_index = 2;
				image_angle = 0;
				image_yscale = myBody.image_yscale;
				if (stallTimer <= 0)
				{
					stallTimer = stallTimerMax;
					attackNumber = state_idle;
					spriteIndex = sprIdle;
					attackTimer = attackTimerMax;
					attackRange = 0;
				}
				//return to the originX and originY
			}
			break;
	
			case state_damaged:
			//image_yscale = myBody.image_yscale;
			hsp *= .9;
			vsp *= .9;
			break;
	
			case state_windup://pulls away from the player before launching self in the attack attackNumber
			//add to the windup
			windupRange += windupSpeed;
			windupRange = clamp(windupRange,0,windupRangeMax);
			//pull the enemy away from the player
			var idealPosX = originX-lengthdir_x((windupRange/windupRangeMax)*windupRangeMax,playerDir);
			var idealPosY =  originY-lengthdir_y((windupRange/windupRangeMax)*windupRangeMax,playerDir);
		
			//hsp = -lengthdir_x(windupSpeed,playerDir);
			//vsp = -lengthdir_y(windupSpeed,playerDir);
			image_angle = 0;
			//handle sprite
			spriteIndex = sprAttack;
			if (playerIsDiagonal)
			{
				spriteIndex = sprAttackDiagonal;
				if(instance_exists(obj_Player))image_yscale = sign(obj_Player.y-y);
				image_angle = 0;
			}
			else if (playerIsStraightAbove)
			{
				spriteIndex = sprAttack;
				image_angle = 90*image_xscale;
				if(instance_exists(obj_Player))image_yscale = sign(obj_Player.y-y);
			}
			image_index = 0;
		
			if (windupRange >= windupRangeMax)
			{
				windupRange = windupRangeMax;
				windupTimer--;
				if (windupTimer <= 0)
				{
					attackNumber = state_attack;
					windupTimer = windupTimerMax;
					hsp = lengthdir_x(attackSpeed,playerDir);
					vsp = lengthdir_y(attackSpeed,playerDir);
				}
			}
		
			hsp = (idealPosX - x) * accel;
			vsp = (idealPosY - y) * accel;
			break;
		}
		
		#region Animation
		image_speed = 1;
		
		sprite_index = spriteIndex;
		#endregion
		break;
		#endregion
	}
	#endregion
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}