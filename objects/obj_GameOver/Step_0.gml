///@description Main

//Inputs

scr_Player_Inputs();

//Go To Menu

if (!instance_exists(obj_Fade))
{
	if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
	{
		global.playerLives = 3;
		global.pause = false;
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = rm_StageSelect;
		fade.pausable = false;
	}
}

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (global.characterP1)
	{
		case "kirby":
		sprIdle = spr_GameOver_Character_Kirby_Normal;
		break;
			
		default:
		sprIdle = spr_GameOver_Character_Kirby_Normal;
		break;
	}
	image_index = irandom_range(0,image_number - 1);
	setupTimer = -1;
}

//Animation

sprite_index = sprIdle;