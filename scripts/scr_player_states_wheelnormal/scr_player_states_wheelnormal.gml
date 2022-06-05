///@description Fire Dash

function scr_Player_States_WheelNormal()
{
	if (!global.pause)
	{
		//Variables
		
		invincible = !wheelTurn;
		
		//Gravity
		
		if (sign(vsp) < gravLimitWheel)
		{
			vsp += gravWheel;
		}
		else
		{
			vsp = gravLimitWheel;
		}
		
		if ((!global.cutscene) and (!canUfoFloat) and (vsp < 0) and (!keyJumpHold))
		{
			var jumpLimitValue = -jumpspeedWheel / 4;
			if ((hasJumpLimit) and (jumpLimit)) vsp = max(vsp,jumpLimitValue);
		}
		
		//Movement
		
		if ((wheelTurn) and (grounded)) wheelTurn = false;
		
		if ((!global.cutscene) and (wheelReady) and (!wheelTurn) and (!wheelCrash))
		{
			if (keyRightPressed)
			{
				var wheelDirTemp = 1;
				if ((sign(hsp) != 0) and (sign(hsp) != sign(wheelDirTemp)))
				{
					if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
					audio_play_sound(snd_DashBegin,0,false);
					jumpLimit = false;
					jumpLimitTimer = 30;
					if (grounded) vsp = -6;
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
					jumpLimit = false;
					jumpLimitTimer = 30;
					if (grounded) vsp = -6;
					hsp = 0;
					wheelDir = -1;
					runParticleNum = 0;
					runParticleTimer = 0;
					wheelTurn = true;
				}
			}
		}
		
		if ((wheelReady) and (!wheelCrash)) hsp += accelWheel * wheelDir;
		hsp = clamp(hsp,-movespeedWheel,movespeedWheel);
		
		if (hsp >= decelWheel) hsp -= decelWheel;
		if (hsp <= -decelWheel) hsp += decelWheel;
		if ((hsp > -decelWheel) and (hsp < decelWheel)) hsp = 0;
		
		//Jump
		
		if ((!global.cutscene) and (canJump) and (((!canMultiJump) and (grounded)) or ((canMultiJump) and (multiJumpCounter < multiJumpLimit))) and (!wallAbove) and (keyJumpPressed))
		{
			sprite_index = sprJump;
			image_index = 0;
			vsp = -jumpspeedWheel;
		}
		
		//Crash
		
		if ((hsp > (movespeedWheel * .8)) and (place_meeting(x + hsp,y,obj_ParentWall)))
		{
			if (!instance_place(x + hsp,y,obj_ParentWall).platform)
			{
				jumpLimit = false;
				jumpLimitTimer = 15;
				hsp = (movespeedWheel / 2) * -dir;
				vsp = -4;
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
