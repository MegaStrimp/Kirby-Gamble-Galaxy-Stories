///@description Main

//Inputs

scr_Player_Inputs(player);

//Destroy

if ((!global.cutscene) and ((keyJumpPressed) or (keyAttackPressed)))
{
	global.pause = false;
	instance_destroy();
}