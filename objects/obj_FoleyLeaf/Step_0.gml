///@description Main

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	//Destroy
	
	if (scr_OutsideView()) instance_destroy();
	
	//Movement
	
	spd += .02;
	y -= spd;
}