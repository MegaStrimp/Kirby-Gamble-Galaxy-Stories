///@description Climb State

function scr_Player_States_Climb()
{
	if (!global.pause)
	{
		#region Variables
		var playerAbility = global.abilityP1;
		var playerCharacter = global.characterP1;
		var playerSprayPaint = global.sprayPaintP1;
		
		switch (player)
		{
			case 1:
			playerAbility = global.abilityP2;
			playerCharacter = global.characterP2;
			playerSprayPaint = global.sprayPaintP2;
			break;
			
			case 2:
			playerAbility = global.abilityP3;
			playerCharacter = global.characterP3;
			playerSprayPaint = global.sprayPaintP3;
			break;
			
			case 3:
			playerAbility = global.abilityP4;
			playerCharacter = global.characterP4;
			playerSprayPaint = global.sprayPaintP4;
			break;
		}
		#endregion
		
		//Movement
		
		if (!global.cutscene)
		{
			if (keyUpHold)
			{
				image_speed = 1;
				sprite_index = sprClimbUp;
				vsp = -climbSpeed;
				grounded = false;
				
				if (((!place_meeting(x,y,obj_Ladder)) or (!place_meeting(x,y - 8,obj_Ladder))) and ((!place_meeting(x,y,obj_Platform)) or (!place_meeting(x,y - 4,obj_Platform))))
				{
					state = playerStates.normal;
				}
			}
			else if (keyDownHold)
			{
				if ((place_meeting(x,y + (sprite_get_height(spr_Ladder) / 2),obj_Ladder)) or (place_meeting(x,y + 4,obj_Platform)))
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
			if ((canFallRoll) and (carriedItem == carriedItems.none) and (playerAbility != playerAbilities.sword) and (playerAbility != playerAbilities.parasol) and (playerAbility != playerAbilities.hammer)) fallRoll = true;
		    vsp = -jumpspeed;
			grounded = false;
		    audio_play_sound(snd_Jump,0,false);
		    state = playerStates.normal;
		}
		
		//Go Under The Ladder
		
		if ((grounded) and (!instance_place(x,y + 1,obj_ParentWall).platform) and (keyDownHold)) state = playerStates.normal;
		
		//Move Left or Right
		
		if ((!global.cutscene) and ((keyLeftPressed) or (keyRightPressed))) state = playerStates.normal;
		
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