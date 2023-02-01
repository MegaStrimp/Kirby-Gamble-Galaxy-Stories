///@description Character Select Menu - Sprays

function scr_CharacterSelectMenu_Sprays()
{
	/*
	0 - Index
	*/
	
	if (ds_exists(spraysArray,ds_type_grid)) ds_grid_destroy(spraysArray);
	
	spraysArray = ds_grid_create(99,1);
	ds_grid_clear(spraysArray,-1);
	
	var i = 0;
	
	#region Friendly Pink
	if (global.friendlyPinkSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.friendlyPink;
		i += 1;
	}
	#endregion
	
	#region Yellow
	if (global.yellowSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.yellow;
		i += 1;
	}
	#endregion
	
	#region Red
	if (global.redSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.red;
		i += 1;
	}
	#endregion
	
	#region Green
	if (global.greenSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.green;
		i += 1;
	}
	#endregion
	
	#region Dreamy Blueberry
	if (global.dreamyBlueberrySprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.dreamyBlueberry;
		i += 1;
	}
	#endregion
	
	#region Carbon
	if (global.carbonSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.carbon;
		i += 1;
	}
	#endregion
	
	#region Cherry
	if (global.cherrySprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.cherry;
		i += 1;
	}
	#endregion
	
	#region Deep Fried Kirb
	if (global.deepFriedKirbSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.deepFriedKirb;
		i += 1;
	}
	#endregion
	
	#region Emerald
	if (global.emeraldSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.emerald;
		i += 1;
	}
	#endregion
	
	#region Game Kirb
	if (global.gameKirbSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.gameKirb;
		i += 1;
	}
	#endregion
	
	#region Haunting Purple
	if (global.hauntingPurpleSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.hauntingPurple;
		i += 1;
	}
	#endregion
	
	#region Invis Sprinkle
	if (global.invisSprinkleSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.invisSprinkle;
		i += 1;
	}
	#endregion
	
	#region Monochrome Kirb
	if (global.monochromeKirbSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.monochromeKirb;
		i += 1;
	}
	#endregion
	
	#region Yolk Temple
	if (global.yolkTempleSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.yolkTemple;
		i += 1;
	}
	#endregion
	
	#region Plump Tomato
	if (global.plumpTomatoSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.plumpTomato;
		i += 1;
	}
	#endregion
	
	#region Waddle Waddle
	if (global.waddleWaddleSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.waddleWaddle;
		i += 1;
	}
	#endregion
	
	#region Mystic
	if (global.mysticSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.mystic;
		i += 1;
	}
	#endregion
	
	#region Shadow Of The Mirror
	if (global.shadowOfTheMirrorSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.shadowOfTheMirror;
		i += 1;
	}
	#endregion
	
	#region Delirious
	if (global.deliriousSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.delirious;
		i += 1;
	}
	#endregion
	
	#region Greenjolt
	if (global.greenjoltSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.greenjolt;
		i += 1;
	}
	#endregion
	
	#region Butter Knife
	if (global.butterKnifeSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.butterKnife;
		i += 1;
	}
	#endregion
	
	#region Blurple
	if (global.blurpleSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.blurple;
		i += 1;
	}
	#endregion
	
	#region Beam
	if (global.beamSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.beam;
		i += 1;
	}
	#endregion
	
	#region Stone
	if (global.stoneSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.stone;
		i += 1;
	}
	#endregion
	
	#region Mirror
	if (global.mirrorSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.mirror;
		i += 1;
	}
	#endregion
	
	#region Ninja
	if (global.ninjaSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.ninja;
		i += 1;
	}
	#endregion
	
	#region Fire
	if (global.fireSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.fire;
		i += 1;
	}
	#endregion
	
	#region Ice
	if (global.iceSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.ice;
		i += 1;
	}
	#endregion
	
	#region Plasma
	if (global.plasmaSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.plasma;
		i += 1;
	}
	#endregion
	
	#region Unearthly Hand
	if (global.unearthlyHandSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.unearthlyHand;
		i += 1;
	}
	#endregion
	
	#region So Meta
	if (global.soMetaSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.soMeta;
		i += 1;
	}
	#endregion
	
	#region Gooey Blue
	if (global.gooeyBlueSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.gooeyBlue;
		i += 1;
	}
	#endregion
	
	#region Egg Brown
	if (global.eggBrownSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.eggBrown;
		i += 1;
	}
	#endregion
	
	#region Telltale Keeby
	if (global.telltaleKeebySprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.telltaleKeeby;
		i += 1;
	}
	#endregion
	
	#region Royal Yarn
	if (global.royalYarnSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.royalYarn;
		i += 1;
	}
	#endregion
	
	#region Smiley White
	if (global.smileyWhiteSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.smileyWhite;
		i += 1;
	}
	#endregion
	
	#region Edd
	if (global.eddSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.edd;
		i += 1;
	}
	#endregion
	
	#region Musician's Light
	if (global.musiciansLightSprayPaintUnlocked)
	{
		spraysArray[# i,0] = playerSprayPaints.musiciansLight;
		i += 1;
	}
	#endregion
	
	#region Aege
	if (global.kirbyBattleBlitzCrossoverKeycard)
	{
		spraysArray[# i,0] = playerSprayPaints.aege;
		i += 1;
	}
	#endregion
	
	#region Stray
	if (global.kirbyBattleBlitzCrossoverKeycard)
	{
		spraysArray[# i,0] = playerSprayPaints.stray;
		i += 1;
	}
	#endregion
	
	#region glitch
	if (global.kirbyBattleBlitzCrossoverKeycard)
	{
		spraysArray[# i,0] = playerSprayPaints.glitch;
		i += 1;
	}
	#endregion
	
	spraysMax = i;
}