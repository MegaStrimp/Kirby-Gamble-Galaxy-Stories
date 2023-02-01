///@description Chapter Intro Menu - Acts

function scr_ChapterIntroMenu_Acts()
{
	/*
	0 - Index
	1 - Chapter Title
	2 - Act Title
	3 - Chapter Color Dark
	4 - Chapter Color Light
	5 - Act Color Dark
	6 - Act Color Light
	7 - Music
	*/
	
	if (ds_exists(actsArray,ds_type_grid)) ds_grid_destroy(actsArray);
	
	actsArray = ds_grid_create(50,8);
	ds_grid_clear(actsArray,-1);
	
	var i = 0;
	
	#region Chapter 1 Act 1
	actsArray[# i,0] = acts.C1A1;
	actsArray[# i,1] = str("Acts.C1A1.Index");
	actsArray[# i,2] = str("Acts.C1A1.Title");
	actsArray[# i,3] = make_color_rgb(0,188,103);
	actsArray[# i,4] = make_color_rgb(0,255,144);
	actsArray[# i,5] = make_color_rgb(0,130,15);
	actsArray[# i,6] = make_color_rgb(0,211,24);
	actsArray[# i,7] = mus_ChapterIntroC1A1;
	i += 1;
	#endregion
	
	#region Chapter 1 Act 2
	actsArray[# i,0] = acts.C1A2;
	actsArray[# i,1] = str("Acts.C1A2.Index");
	actsArray[# i,2] = str("Acts.C1A2.Title");
	actsArray[# i,3] = make_color_rgb(0,188,103);
	actsArray[# i,4] = make_color_rgb(0,255,144);
	actsArray[# i,5] = make_color_rgb(36,99,53);
	actsArray[# i,6] = make_color_rgb(55,150,82);
	actsArray[# i,7] = mus_ChapterIntroC1A2;
	i += 1;
	#endregion
	
	#region Chapter 1 Act 3
	actsArray[# i,0] = acts.C1A3;
	actsArray[# i,1] = str("Acts.C1A3.Index");
	actsArray[# i,2] = str("Acts.C1A3.Title");
	actsArray[# i,3] = make_color_rgb(116,0,142);
	actsArray[# i,4] = make_color_rgb(154,0,188);
	actsArray[# i,5] = make_color_rgb(0,130,15);
	actsArray[# i,6] = make_color_rgb(0,211,24);
	actsArray[# i,7] = mus_ChapterIntroC1A2;
	i += 1;
	#endregion
	
	#region Chapter 1 Act 4
	actsArray[# i,0] = acts.C1A4;
	actsArray[# i,1] = str("Acts.C1A4.Index");
	actsArray[# i,2] = str("Acts.C1A4.Title");
	actsArray[# i,3] = make_color_rgb(0,206,206);
	actsArray[# i,4] = make_color_rgb(214,255,255);
	actsArray[# i,5] = make_color_rgb(0,130,15);
	actsArray[# i,6] = make_color_rgb(0,211,24);
	actsArray[# i,7] = mus_ChapterIntroC1A2;
	i += 1;
	#endregion
	
	#region Chapter 1 Act 5
	actsArray[# i,0] = acts.C1A5;
	actsArray[# i,1] = str("Acts.C1A5.Index");
	actsArray[# i,2] = str("Acts.C1A5.Title");
	actsArray[# i,3] = make_color_rgb(158,123,181);
	actsArray[# i,4] = make_color_rgb(223,173,255);
	actsArray[# i,5] = make_color_rgb(0,130,15);
	actsArray[# i,6] = make_color_rgb(0,211,24);
	actsArray[# i,7] = mus_ChapterIntroC1A2;
	i += 1;
	#endregion
}