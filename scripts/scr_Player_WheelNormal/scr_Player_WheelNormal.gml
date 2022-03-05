///@description Fire Dash

function scr_Player_WheelNormal()
{
	if (!global.pause)
	{
		//Variables
		
		invincible = !wheelTurn;
		
		var grounded = false;
		if (place_meeting(x,y + 1,obj_Wall))
		{
			var collidingWall = instance_place(x,y + 1,obj_Wall);
			if ((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + 20 + vspFinal)))) grounded = true;
		}
		else if (place_meeting(x,y + 1,obj_Spring))
		{
			var collidingWall = instance_place(x,y + 1,obj_Spring);
			if ((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + 20 + vspFinal)))) grounded = true;
		}
		
		//Gravity
		
		if (sign(vsp) < gravLimitWheel)
		{
			vsp += gravWheel;
		}
		else
		{
			vsp = gravLimitWheel;
		}
		
		//Movement
		
		if ((!global.cutscene) and (!wheelTurn) and (!wheelCrash))
		{
			if (keyRightPressed)
			{
				var wheelDirTemp = 1;
				if ((sign(hsp) != 0) and (sign(hsp) != sign(wheelDirTemp)))
				{
					if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
					audio_play_sound(snd_DashBegin,0,false);
					if (grounded) vsp = -5;
					hsp = 0;
					wheelDir = 1;
					runParticleNum = 0;
					runParticleTimer = 0;
					wheelTurn = true;
				}
			}
			if (keyLeftPressed)
			{
				var wheelDirTemp = -1;
				if ((sign(hsp) != 0) and (sign(hsp) != sign(wheelDirTemp)))
				{
					if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
					audio_play_sound(snd_DashBegin,0,false);
					if (grounded) vsp = -5;
					hsp = 0;
					wheelDir = -1;
					runParticleNum = 0;
					runParticleTimer = 0;
					wheelTurn = true;
				}
			}
		}
		
		if ((!wheelTurn) and (!wheelCrash)) hsp += accelWheel * wheelDir;
		hsp = clamp(hsp,-movespeedWheel,movespeedWheel);
		
		if (hsp >= decelWheel) hsp -= decelWheel;
		if (hsp <= -decelWheel) hsp += decelWheel;
		if ((hsp > -decelWheel) and (hsp < decelWheel)) hsp = 0;
		
		if ((wheelTurn) and (grounded)) wheelTurn = false;
		
		//Crash
		
		if ((hsp > (movespeedWheel * .8)) and (place_meeting(x + hsp,y,obj_Wall)))
		{
			if (!instance_place(x + hsp,y,obj_Wall).platform)
			{
				hsp *= -dir;
				vsp = -5;
				wheelCrash = true;
			}
		}
		
		//Cancel
		
		if ((global.cutscene) or (hurt) or ((wheelCrash) and (grounded)) or ((!wheelTurn) and (keyAttackPressed))) attackTimer = 0;
		
		//Animation
		
		image_speed = 1;
		
		if (fireReleaseTimer != -1)
		{
			sprite_index = sprFireAttack2;
		}
		
		//Collision
		
		scr_Player_Collision();
	}
	else
	{
		image_speed = 0;
	}
}
