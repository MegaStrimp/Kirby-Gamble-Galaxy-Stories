///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Change Move Angle
	
	if ((moveAngleActive) and (moveAngleLimit < moveAngleLimitMax) and (!moveAnglePaused))
	{
		var nearestPlayer = instance_nearest(x,y,obj_Player);
		
		if (nearestPlayer != -1)
		{
			switch (moveAngle)
			{
				#region Right
				case 0:
				if (abs(x - nearestPlayer.x) <= spd)
				{
					if (y > nearestPlayer.y + moveAngleDeadzone)
					{
						dirX = 1;
						dirY = 1;
						imageAngle = 0;
						image_angle = 0;
						hsp = 0;
						vsp = 0;
						moveAnglePaused = true;
						moveAngleLimit += 1;
						moveAngleTimer = moveAngleTimerMax;
						
						dirY = -1;
						imageAngle = 270;
						image_angle = 270;
						moveAngle = 3;
					}
					else if (y < nearestPlayer.y - moveAngleDeadzone)
					{
						dirX = 1;
						dirY = 1;
						imageAngle = 0;
						image_angle = 0;
						hsp = 0;
						vsp = 0;
						moveAnglePaused = true;
						moveAngleLimit += 1;
						moveAngleTimer = moveAngleTimerMax;
						
						dirY = 1;
						imageAngle = 270;
						image_angle = 270;
						moveAngle = 2;
					}
				}
				break;
				#endregion
				
				#region Left
				case 1:
				if (abs(x - nearestPlayer.x) <= spd)
				{
					if (y > nearestPlayer.y + moveAngleDeadzone)
					{
						dirX = 1;
						dirY = 1;
						imageAngle = 0;
						image_angle = 0;
						hsp = 0;
						vsp = 0;
						moveAnglePaused = true;
						moveAngleLimit += 1;
						moveAngleTimer = moveAngleTimerMax;
						
						dirY = -1;
						imageAngle = 270;
						image_angle = 270;
						moveAngle = 3;
					}
					else if (y < nearestPlayer.y - moveAngleDeadzone)
					{
						dirX = 1;
						dirY = 1;
						imageAngle = 0;
						image_angle = 0;
						hsp = 0;
						vsp = 0;
						moveAnglePaused = true;
						moveAngleLimit += 1;
						moveAngleTimer = moveAngleTimerMax;
						
						dirY = 1;
						imageAngle = 270;
						image_angle = 270;
						moveAngle = 2;
					}
				}
				break;
				#endregion
				
				#region Down
				case 2:
				if (abs(y - nearestPlayer.y) <= spd)
				{
					if (x > nearestPlayer.x + moveAngleDeadzone)
					{
						dirX = 1;
						dirY = 1;
						imageAngle = 0;
						image_angle = 0;
						hsp = 0;
						vsp = 0;
						moveAnglePaused = true;
						moveAngleLimit += 1;
						moveAngleTimer = moveAngleTimerMax;
						
						dirX = -1;
						moveAngle = 1;
					}
					else if (x < nearestPlayer.x - moveAngleDeadzone)
					{
						dirX = 1;
						dirY = 1;
						imageAngle = 0;
						image_angle = 0;
						hsp = 0;
						vsp = 0;
						moveAnglePaused = true;
						moveAngleLimit += 1;
						moveAngleTimer = moveAngleTimerMax;
						
						dirX = 1;
						moveAngle = 0;
					}
				}
				break;
				#endregion
				
				#region Up
				case 3:
				if (abs(y - nearestPlayer.y) <= spd)
				{
					if (x > nearestPlayer.x + moveAngleDeadzone)
					{
						dirX = 1;
						dirY = 1;
						imageAngle = 0;
						image_angle = 0;
						hsp = 0;
						vsp = 0;
						moveAnglePaused = true;
						moveAngleLimit += 1;
						moveAngleTimer = moveAngleTimerMax;
						
						dirX = -1;
						moveAngle = 1;
					}
					else if (x < nearestPlayer.x - moveAngleDeadzone)
					{
						dirX = 1;
						dirY = 1;
						imageAngle = 0;
						image_angle = 0;
						hsp = 0;
						vsp = 0;
						moveAnglePaused = true;
						moveAngleLimit += 1;
						moveAngleTimer = moveAngleTimerMax;
						
						dirX = 1;
						moveAngle = 0;
					}
				}
				break;
				#endregion
			}
		}
	}
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
		destroyTimer = -1;
	}
	
	//Invis Timer
	
	if (invisTimer > 0)
	{
		invisTimer -= 1;
	}
	else if (invisTimer == 0)
	{
		if (visible)
		{
			visible = false;
		}
		else
		{
			visible = true;
		}
		invisTimer = invisTimerMax;
	}
	
	//Move Angle Timer
	
	if (moveAngleTimer > 0)
	{
		moveAngleTimer -= 1;
	}
	else if (moveAngleTimer == 0)
	{
		if (audio_is_playing(snd_Laser)) audio_stop_sound(snd_Laser);
		audio_play_sound(snd_Laser,0,false);
		moveAnglePaused = false;
		switch (moveAngle)
		{
			case 0:
			hsp = spd * 1;
			break;
			
			case 1:
			hsp = spd * -1;
			break;
			
			case 2:
			vsp = spd * 1;
			break;
			
			case 3:
			vsp = spd * -1;
			break;
		}
		moveAngleTimer = -1;
	}
	
	//Animation
	
	image_speed = 1;
	
	if (moveAnglePaused)
	{
		sprite_index = sprBall;
	}
	else
	{
		sprite_index = sprIdle;
	}
}
else
{
	image_speed = 0;
}