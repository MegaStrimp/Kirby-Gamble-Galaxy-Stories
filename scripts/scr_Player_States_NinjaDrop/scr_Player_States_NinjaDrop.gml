///@description Ninja Drop

function scr_Player_States_NinjaDrop()
{
	if (!global.pause)
	{
		#region Pointers
		switch (player)
		{
			case 0:
			var playerAbility = global.abilityP1;
			var playerCharacter = global.characterP1;
			var playerIsHelper = global.isHelperP1;
			var playerFamiliar = global.familiarP1;
			var micCount = global.micCountP1;
			break;
			
			case 1:
			var playerAbility = global.abilityP2;
			var playerCharacter = global.characterP2;
			var playerIsHelper = global.isHelperP2;
			var playerFamiliar = global.familiarP2;
			var micCount = global.micCountP2;
			break;
			
			case 2:
			var playerAbility = global.abilityP3;
			var playerCharacter = global.characterP3;
			var playerIsHelper = global.isHelperP3;
			var playerFamiliar = global.familiarP3;
			var micCount = global.micCountP3;
			break;
			
			case 3:
			var playerAbility = global.abilityP4;
			var playerCharacter = global.characterP4;
			var playerIsHelper = global.isHelperP4;
			var playerFamiliar = global.familiarP4;
			var micCount = global.micCountP4;
			break;
		}
		#endregion
		
		//Afterimage
		
		var afterimage = instance_create_depth(x,y,depth,obj_Afterimage);
		afterimage.owner = id;
		afterimage.sprite_index = sprCutterAttack3;
		afterimage.image_xscale = image_xscale;
		afterimage.image_alpha = .5;
		afterimage.paletteIndex = paletteIndex;
		if ((playerCharacter == playerCharacters.kirby) and (global.abilitySpraysKeycard) and (global.cheatColoredAbilitiesEquipped)) afterimage.paletteIndex = spr_Kirby_Normal_Palette_Ninja;
		
		//Revert Back
		
		if ((attackNumber != playerAttacks.ninjaDrop) or (place_meeting(x,y + 1,obj_ParentWall))) attackTimer = 0;
		
		//Collision
		
		scr_Player_Collision(playerMechs.none);
	}
}