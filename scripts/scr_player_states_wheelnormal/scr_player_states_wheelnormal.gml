///@description Fire Dash

function scr_Player_States_WheelNormal()
{
	if (!global.pause)
	{
		#region Variables
		invincible = !wheelTurnJump;
		#endregion
		
		#region Gravity
		var gravLimitFinal = gravLimitWheel;
		var gravFinal = gravWheel;
		if (wheelTurnJump)
		{
			gravLimitFinal = gravLimitWheel;
			gravFinal = gravWheel;
		}
		
		if (sign(vsp) < gravLimitFinal)
		{
			vsp += gravFinal;
		}
		else
		{
			vsp = gravLimitFinal;
		}
		
		if ((!global.cutscene) and (!canUfoFloat) and (vsp < 0) and (!keyJumpHold))
		{
			var jumpLimitValue = -jumpspeedWheel / 4;
			if ((hasJumpLimit) and (jumpLimit)) vsp = max(vsp,jumpLimitValue);
		}
		#endregion
		
		#region Movement
		if ((wheelTurnJump) and (grounded)) wheelTurnJump = false;
		
		if ((!global.cutscene) and (wheelReady) and (!wheelTurnJump) and (!wheelCrash))
		{
			if ((keyRightHold) and (!keyLeftHold))
			{
				var wheelDirTemp = 1;
				if ((sign(hsp) != 0) and (wheelDir != sign(wheelDirTemp)))
				{
					if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
					audio_play_sound(snd_DashBegin,0,false);
					jumpLimit = false;
					jumpLimitTimer = 30;
					hsp = 0;
					wheelDir = 1;
					runParticleNum = 0;
					runParticleTimer = 0;
					if ((wheelTurnCounter == -1) or (!grounded))
					{
						
					}
					else
					{
						vsp = -6;
						grounded = false;
						wheelTurnJump = true;
					}
					wheelSpeedOffset = wheelSpeedOffsetMax;
					wheelSpeedOffsetCounter = wheelSpeedOffsetCounterMax;
					wheelTurnCounter = wheelTurnCounterMax;
				}
			}
			if ((keyLeftHold) and (!keyRightHold))
			{
				var wheelDirTemp = -1;
				if ((sign(hsp) != 0) and (wheelDir != sign(wheelDirTemp)))
				{
					if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
					audio_play_sound(snd_DashBegin,0,false);
					jumpLimit = false;
					jumpLimitTimer = 30;
					hsp = 0;
					wheelDir = -1;
					runParticleNum = 0;
					runParticleTimer = 0;
					if ((wheelTurnCounter == -1) or (!grounded))
					{
						
					}
					else
					{
						vsp = -6;
						grounded = false;
						wheelTurnJump = true;
					}
					wheelSpeedOffset = wheelSpeedOffsetMax;
					wheelSpeedOffsetCounter = wheelSpeedOffsetCounterMax;
					wheelTurnCounter = wheelTurnCounterMax;
				}
			}
		}
		
		if ((wheelReady) and (!wheelCrash)) hsp += accelWheel * wheelDir;
		hsp = clamp(hsp,-(movespeedWheel + wheelSpeedOffset),(movespeedWheel + wheelSpeedOffset));
		
		if (hsp >= decelWheel) hsp -= decelWheel;
		if (hsp <= -decelWheel) hsp += decelWheel;
		if ((hsp > -decelWheel) and (hsp < decelWheel)) hsp = 0;
		#endregion
		
		#region Jump
		if ((!global.cutscene) and (canJump) and (((!canMultiJump) and (grounded)) or ((canMultiJump) and (multiJumpCounter < multiJumpLimit))) and (!wallAbove) and (keyJumpPressed))
		{
			sprite_index = sprJump;
			image_index = 0;
			vsp = -jumpspeedWheel;
			grounded = false;
		}
		#endregion
		
		#region Crash
		if ((hsp > (movespeedWheel * .8)) and (place_meeting(x + hsp,y,obj_ParentWall)))
		{
			if (!instance_place(x + hsp,y,obj_ParentWall).platform)
			{
				jumpLimit = false;
				jumpLimitTimer = 15;
				hsp = (movespeedWheel / 2) * -dir;
				vsp = -4;
				grounded = false;
				wheelCrash = true;
			}
		}
		#endregion
		
		#region Afterimages
		if (current_time % 2 == 0)
		{
			var afterimage = instance_create_depth(x - (wheelDir * 6),y,depth,obj_Afterimage);
			afterimage.owner = id;
			afterimage.sprite_index = sprCutterAttack6;
			afterimage.image_xscale = image_xscale;
			afterimage.image_alpha = .5;
			afterimage.paletteIndex = paletteIndex;
			afterimage.lowerAlphaToDestroy = true;
		}
		#endregion
		
		#region Cancel
		if ((global.cutscene) or (hurt) or ((wheelCrash) and (grounded)) or ((!wheelTurnJump) and (keyAttackPressed))) attackTimer = 0;
		#endregion
		
		#region Turn Counter
		if (wheelTurnCounter != -1)
		{
			wheelTurnCounter = max(wheelTurnCounter - speedMultFinal,0);
			if (wheelTurnCounter == 0)
			{
				wheelTurnCounter = -1;
			}
		}
		#endregion
		
		#region Speed Offset
		if (wheelSpeedOffsetCounter != -1)
		{
			wheelSpeedOffsetCounter = max(wheelSpeedOffsetCounter - speedMultFinal,0);
			if (wheelSpeedOffsetCounter == 0)
			{
				wheelSpeedOffsetCounter = -1;
			}
		}
		
		if (wheelSpeedOffsetCounter == -1) wheelSpeedOffset = lerp(wheelSpeedOffset,0,.05);
		#endregion
		
		#region Animation
		image_speed = 1;
		#endregion
		
		#region Collision
		scr_Player_Collision(playerMechs.none);
		#endregion
	}
	else
	{
		image_speed = 0;
	}
}
