///@description Float State

function scr_Player_Float()
{
	if (!global.pause)
	{
		//Variables
		
		image_speed = 1;
		fallRoll = false;
		run = false;
		
		var grounded = false;
		if (place_meeting(x,y + 1,obj_Wall))
		{
			var collidingWall = instance_place(x,y + 1,obj_Wall);
			if ((!collidingWall.platform) or ((collidingWall.platform) and (((!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padd))) and !(round(bbox_bottom) > collidingWall.y + 20 + vspFinal)))) grounded = true;
		}
		
		//Movement
		
		if (!hurt)
		{
			if ((!global.cutscene))
			{
				if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
				{
				    hsp -= accel;
					dir = -1;
				}
				else if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
				{
				    hsp += accel;
					dir = 1;
				}
			}
			
			if ((!global.cutscene) and (((keyboard_check(keyLeft)) and (keyboard_check(keyRight)) and (!gamepad_button_check(0,gp_padl)) and (!gamepad_button_check(0,gp_padr))) or ((gamepad_button_check(0,gp_padl)) and (gamepad_button_check(0,gp_padr)) and (!keyboard_check(keyLeft)) and (!keyboard_check(keyRight))) or ((!keyboard_check(keyLeft)) and (!keyboard_check(keyRight) and (!gamepad_button_check(0,gp_padl)) and (!gamepad_button_check(0,gp_padr))))))
			{
				var ultiDecel = decel;
				if (hsp >= ultiDecel) hsp -= ultiDecel;
				if (hsp <= -ultiDecel) hsp += ultiDecel;
				if ((hsp > -ultiDecel) and (hsp < ultiDecel)) hsp = 0;
			}
			
			hsp = clamp(hsp,-movespeedNormal,movespeedNormal);
		}
		
		if (vsp < gravLimitFloat)
		{
			vsp += gravFloat;
		}
		else
		{
			vsp = gravLimitFloat;
		}
		
		//Flap
		
		if ((!floatSpit) and (float) and (!hurt))
		{
			if ((!global.cutscene) and (floatingTimer == -1) and ((keyboard_check(keyJump)) or (keyboard_check(keyUp)) or (gamepad_button_check(0,gp_face1)) or (gamepad_button_check(0,gp_padu))))
			{
				if (carriedItem == "none")
				{
					sprite_index = sprFlap;
				}
				else
				{
					sprite_index = sprItemCarryLightFlap;
				}
				image_index = 0;
				if (audio_is_playing(snd_Float)) audio_stop_sound(snd_Float);
				if (!audio_is_playing(floatSfx)) floatSfx = audio_play_sound(snd_Float,0,false);
				floating = true;
				if (jumpLimit) vsp = -jumpspeedFloat;
				floatingTimer = 10;
			}
			
			if (floatingTimer > 0)
			{
				floatingTimer -= 1;
			}
			else
			{
				floating = false;
				floatingTimer = -1;
			}
		}
		
		//Door
		
		if ((!global.cutscene) and (canEnter) and (position_meeting(x,y,obj_Door)) and ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) and (!attack))
		{
		    if ((!instance_exists(obj_Fade)) and (!hurt))
		    {
				vsp = 0;
				enterDoor = true;
		    }
		}
		
		//Air Puff
		
		if ((!global.cutscene) and ((grounded) or (enterDoor) or ((place_meeting(x,y,obj_AntiFloat))) or (keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and ((!floatSpit) and (sprite_index != sprFloatReady) and (sprite_index != sprItemCarryLightFloatReady)))
		{
			if (audio_is_playing(floatSfx)) audio_stop_sound(snd_Float);
			var projAirPuff = instance_create_depth(x + ((sprite_get_width(sprFloatSpit) / 2) * dir),y + vsp,depth - 1,obj_AirPuff);
			projAirPuff.owner = id;
			projAirPuff.dmg = 10;
			projAirPuff.dirX = dir;
			projAirPuff.image_xscale = projAirPuff.dirX;
			projAirPuff.hsp = ((airPuffSpd * dir) + hsp);
			projAirPuff.sprIdle = spr_AirPuff_Normal_Idle;
			projAirPuff.sprDestroy = spr_AirPuff_Normal_Destroy;
			projAirPuff.sprite_index = projAirPuff.sprIdle;
			projAirPuff.character = 0;
			audio_play_sound(snd_AirPuff,0,false);
			image_index = 0;
			floatingTimer = -1;
			floating = false;
			float = false;
			floatSpit = true;
		}
		
		//Animation
		
		if (!float)
		{
			if (carriedItem == "none")
			{
				if (floatSpit)
				{
					sprite_index = sprFloatSpit;
				}
				else
				{
					sprite_index = sprFloatReady;
				}
			}
			else
			{
				if (floatSpit)
				{
					sprite_index = sprItemCarryLightFloatSpit;
				}
				else
				{
					sprite_index = sprItemCarryLightFloatReady;
				}
			}
		}
		else if (hurt)
		{
			sprite_index = sprFloatHurt;
		}
		
		if ((!hurt) and (sprite_index == sprFloatHurt))
		{
			float = false;
			floatSpit = false;
		}
		
		//Door
		/*
		if ((!global.cutscene) and (position_meeting(x,y,obj_Door)) and ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))))
		{
		    if ((!instance_exists(obj_Fade)) and (hurt = false))
		    {
		        var nearbyDoor = instance_place(x,y,obj_Door);
		        fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = nearbyDoor.targetRoom;
		        hsp = 0;
		        vsp = 0;
		        image_index = 0;
		        state = playerStates.enter;
		    }
		}*/
		
		//Collision
		
		scr_Player_Collision();
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}