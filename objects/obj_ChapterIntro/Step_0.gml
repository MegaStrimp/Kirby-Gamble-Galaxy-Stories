///@description Main

//Inputs

scr_Player_Inputs(0);

//Press Enter

if ((!instance_exists(obj_Fade)) and (keyStartPressed)) destroyTimer = 0;

//Destroy Timer

if (destroyTimer > 0)
{
	destroyTimer -= 1;
}
else if (destroyTimer == 0)
{
	var targetRoom = global.roomNext;
	
	var fade = instance_create_depth(x,y,-999,obj_Fade);
	fade.targetRoom = targetRoom;
	fade.alpha = 1;
	fade.state = 1;
	fade.color = c_white;
	destroyTimer = -1;
}