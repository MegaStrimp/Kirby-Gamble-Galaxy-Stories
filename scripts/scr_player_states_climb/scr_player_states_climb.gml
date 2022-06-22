///@description Climb State

function scr_Player_States_Climb()
{
	if (!global.pause)
	{
		//Movement
		
		if (!global.cutscene)
		{
			if (keyUpHold)
			{
				/*if (place_meeting(x,y - (sprite_get_height(spr_Ladder) / 1.5),obj_Ladder))
				{
					image_speed = 1;
					sprite_index = sprClimbUp;
					vsp = -climbSpeed;
				}
				else
				{
					vsp = 0;
					image_speed = 0;
				}*/
				
				image_speed = 1;
				sprite_index = sprClimbUp;
				vsp = -climbSpeed;
				
				if ((!place_meeting(x,y,obj_Ladder)) and (!place_meeting(x,y + 8,obj_Ladder)))
				{
					state = playerStates.normal;
				}
			}
			else if (keyDownHold)
			{
				if (place_meeting(x,y + (sprite_get_height(spr_Ladder) / 2),obj_Ladder))
				{
					image_speed = 1;
					sprite_index = sprClimbDown;
					vsp = climbSpeed * 1.75;
				}
				else
				{
					vsp = 0;
					image_speed = 0;
				}
			}
		}
		
		if ((global.cutscene) or ((keyUpHold) and (keyDownHold)) or ((!keyUpHold) and (!keyDownHold)))
		{
			vsp = 0;
			image_speed = 0;
		}
		
		//Jump
		
		if ((!global.cutscene) and (keyJumpPressed) and (!place_meeting(x,y,obj_ParentWall)))
		{
			if (carriedItem == carriedItems.none) fallRoll = true;
		    vsp = -jumpspeed;
		    audio_play_sound(snd_Jump,0,false);
		    state = playerStates.normal;
		}
		
		//Go Under The Ladder
		
		if ((place_meeting(x,y + 1,obj_ParentWall)) and (!instance_place(x,y + 1,obj_ParentWall).platform) and (keyDownHold)) state = playerStates.normal;
		
		//Collision
		
		scr_Player_Collision(playerMechs.none);
		
		//Animation
		
		if ((sprite_index != sprClimbUp) and (sprite_index != sprClimbDown)) sprite_index = sprClimbUp;
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}