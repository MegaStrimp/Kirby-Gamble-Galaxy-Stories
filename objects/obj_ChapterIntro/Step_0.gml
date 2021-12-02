///@description Main

//Inputs

scr_Player_Inputs();

//Press Enter

if ((!instance_exists(obj_Fade)) and ((keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_start)))) destroyTimer = 0;

//Destroy Timer

if (destroyTimer > 0)
{
	destroyTimer -= 1;
}
else if (destroyTimer == 0)
{
	var targetRoom = rm_Setup;
	switch (global.chapterIntro)
	{
		case "1_1":
		targetRoom = rm_GreenGreens1;
		break;
		
		default:
		targetRoom = rm_Setup;
		break;
	}
	
	var fade = instance_create_depth(x,y,-999,obj_Fade);
	fade.targetRoom = targetRoom;
	fade.alpha = 1;
	fade.state = 1;
	fade.color = c_white;
	destroyTimer = -1;
}