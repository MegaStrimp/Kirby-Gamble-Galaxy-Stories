///@description Main

//Inputs

scr_Player_Inputs();

//Destroy

if ((!global.cutscene) and ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyAttack))))
{
	global.pause = false;
	instance_destroy();
}