///@description Main

if ((!global.pause) and (!scr_OutsideView()))
{
	//States
	
	switch (state)
	{
		case "walk":
		if (buttonAnimTimer == -1) buttonAnimTimer = 45;
		
		if (!completed)
		{
			with (obj_Player)
			{
				if ((keyLeftPressed) or (keyRightPressed))
				{
					other.starTimer = 0;
					other.completed = true;
				}
			}
		}
		break;
		
		case "run":
		if (buttonAnimTimer == -1)
		{
			buttonState += 1;
			switch (buttonState)
			{
				case 1:
				buttonAnimTimer = 30;
				break;
					
				case 2:
				buttonAnimTimer = 5;
				break;
					
				case 3:
				buttonAnimTimer = 5;
				break;
					
				case 4:
				buttonAnimTimer = 5;
				buttonState = 0;
				break;
			}
		}
		
		if (!completed)
		{
			if (instance_exists(obj_Player))
			{
				if (obj_Player.run)
				{
					starTimer = 0;
					completed = true;
				}
			}
		}
		break;
		
		case "jump":
		if (buttonAnimTimer == -1) buttonAnimTimer = 45;
		
		if (!completed)
		{
			with (obj_Player)
			{
				if ((place_meeting(x,y + 1,obj_Wall)) and (keyJumpHold) and (!keyDownHold) and (!attack) and (canJump))
				{
					starTimer = 0;
					completed = true;
				}
			}
		}
		break;
		
		case "duck":
		if (buttonAnimTimer == -1) buttonAnimTimer = 45;
		
		if (!completed)
		{
			with (obj_Player)
			{
				if (keyDownHold)
				{
					other.starTimer = 0;
					other.completed = true;
				}
			}
		}
		break;
		
		case "float":
		if (buttonAnimTimer == -1)
		{
			buttonState += 1;
			switch (buttonState)
			{
				case 1:
				buttonAnimTimer = 30;
				break;
					
				case 2:
				buttonAnimTimer = 5;
				break;
					
				case 3:
				buttonAnimTimer = 5;
				break;
					
				case 4:
				buttonAnimTimer = 5;
				buttonState = 0;
				break;
			}
		}
		
		if (!completed)
		{
			if (instance_exists(obj_Player))
			{
				if (obj_Player.float)
				{
					starTimer = 0;
					completed = true;
				}
			}
		}
		break;
		
		case "inhale":
		if (buttonAnimTimer == -1) buttonAnimTimer = 45;
		
		if (!completed)
		{
			switch (substate)
			{
				case 0:
				if (instance_exists(obj_Player))
				{
					if ((obj_Player.inhaling) or (obj_Player.state = playerStates.carry))
					{
						substate = 1;
					}
				}
				break;
				
				case 1:
				if (instance_exists(obj_Player))
				{
					if (obj_Player.spit)
					{
						starTimer = 0;
						completed = true;
					}
				}
				break;
			}
		}
		break;
		
		case "swallow":
		if (buttonAnimTimer == -1) buttonAnimTimer = 45;
		
		if (!completed)
		{
			switch (substate)
			{
				case 0:
				if (instance_exists(obj_Player))
				{
					if (obj_Player.inhaling)
					{
						substate = 1;
					}
				}
				break;
				
				case 1:
				if (instance_exists(obj_Player))
				{
					if (obj_Player.swallow)
					{
						starTimer = 0;
						completed = true;
					}
				}
				break;
			}
		}
		break;
	}
	
	//Button Anim Timer
	
	if (buttonAnimTimer > 0)
	{
		buttonAnimTimer -= 1;
	}
	else if (buttonAnimTimer == 0)
	{
		switch (state)
		{
			default:
			if (buttonAnim == 0)
			{
				buttonAnim = 1;
			}
			else
			{
				buttonAnim = 0;
			}
			break;
		}
		buttonAnimTimer = -1;
	}
	
	//Star Timer
	
	if (starTimer > 0)
	{
		starTimer -= 1;
	}
	else if (starTimer == 0)
	{
		if (audio_is_playing(snd_PointStar_Low)) audio_stop_sound(snd_PointStar_Low);
		audio_play_sound(snd_PointStar_Low,0,false);
		var particle = instance_create_depth(x - 24 + (starState * 12),y - 12,depth - 1,obj_Particle);
		particle.sprite_index = spr_Particle_Sparkle1;
		particle.destroyAfterAnimation = true;
		var star = instance_create_depth(x - 24 + (starState * 12),y - 18,depth - 2,obj_PointStar);
		star.hasGravity = true;
		starState += 1;
		if (starState == 5)
		{
			starTimer = -1;
		}
		else
		{
			starTimer = 4;
		}
	}
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}