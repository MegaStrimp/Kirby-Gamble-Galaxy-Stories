///@description Ninja Drop

function scr_Player_States_NinjaDrop()
{
	if (!global.pause)
	{
		//Afterimage
		
		var afterimage = instance_create_depth(x,y,depth,obj_Afterimage);
		afterimage.owner = id;
		afterimage.sprite_index = sprCutterAttack3;
		afterimage.image_xscale = image_xscale;
		afterimage.image_alpha = .5;
		afterimage.paletteIndex = paletteIndex;
		
		//Revert Back
		
		if ((attackNumber != playerAttacks.ninjaDrop) or (place_meeting(x,y + 1,obj_ParentWall))) attackTimer = 0;
		
		//Collision
		
		scr_Player_Collision(playerMechs.none);
	}
}