///@description Sound Test - Sound Effects

function scr_SoundTest_SoundEffects()
{
	/*
	0 - Number
	1 - Index
	2 - Composer Title
	3 - Sound Title
	*/
	
	if (ds_exists(soundTestArray,ds_type_grid)) ds_grid_destroy(soundTestArray);
	
	soundTestArray = ds_grid_create(99,4);
	ds_grid_clear(soundTestArray,-1);
	
	var i = 0;
	
	#region AAAAA
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = snd_1Up;
	soundTestArray[# i,2] = -1;
	soundTestArray[# i,3] = -1;
	i += 1;
	#endregion
	
	soundsMax = i;
}