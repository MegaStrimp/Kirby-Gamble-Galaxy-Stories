///@description Climb State

function scr_Player_Climb()
{
	if (!global.pause)
	{
		//Movement
		
		if (!global.cutscene)
		{
			if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)))
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
			else if ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd)))
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
		
		if ((global.cutscene) or (((keyboard_check(keyUp)) and (keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padu)) and (!gamepad_button_check(0,gp_padd))) or ((gamepad_button_check(0,gp_padu)) and (gamepad_button_check(0,gp_padd)) and (!keyboard_check(keyUp)) and (!keyboard_check(keyDown))) or ((!keyboard_check(keyUp)) and (!keyboard_check(keyDown) and (!gamepad_button_check(0,gp_padu)) and (!gamepad_button_check(0,gp_padd))))))
		{
			vsp = 0;
			image_speed = 0;
		}
		
		//Jump
		
		if ((!global.cutscene) and ((keyboard_check_pressed(keyJump)) or (gamepad_button_check_pressed(0,gp_face1))) and (!place_meeting(x,y,obj_Wall)))
		{
			if (carriedItem == "none") fallRoll = true;
		    vsp = -jumpspeed;
		    audio_play_sound(snd_Jump,0,false);
		    state = playerStates.normal;
		}
		
		//Go Under The Ladder
		
		if ((place_meeting(x,y + 1,obj_Wall)) and (!instance_place(x,y + 1,obj_Wall).platform) and ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd)))) state = playerStates.normal;
		
		//Collision
		
		scr_Player_Collision();
		
		//Animation
		
		if ((sprite_index != sprClimbUp) and (sprite_index != sprClimbDown)) sprite_index = sprClimbUp;
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}