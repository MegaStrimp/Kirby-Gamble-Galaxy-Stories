///@description Sound Test - Menu Themes

function scr_SoundTest_MenuThemes()
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
	//soundTestArray[# i,1] = mus_;
	soundTestArray[# i,1] = mus_GreenGreens;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "AAAAA";
	i += 1;
	#endregion
	
	soundsMax = i;
}