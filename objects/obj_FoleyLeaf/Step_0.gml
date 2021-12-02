///@description Main

if (!global.pause)
{
	//Destroy
	
	if (scr_OutsideView()) instance_destroy();
	
	//Movement
	
	spd += .02;
	y -= spd;
}