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
	spraysArray[# i,0] = playerSprayPaints.friendlyPink;
	i += 1;
	#endregion
	
	#region Yellow
	spraysArray[# i,0] = playerSprayPaints.yellow;
	i += 1;
	#endregion
	
	#region Red
	spraysArray[# i,0] = playerSprayPaints.red;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.green;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.dreamyBlueberry;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.carbon;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.cherry;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.deepFriedKirb;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.emerald;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.gameKirb;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.hauntingPurple;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.invisSprinkle;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.monochromeKirb;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.yolkTemple;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.plumpTomato;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.waddleWaddle;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.mystic;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.shadowOfTheMirror;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.delirious;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.greenjolt;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.butterKnife;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.blurple;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.beam;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.stone;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.mirror;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.ninja;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.fire;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.ice;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.plasma;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.unearthlyHand;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.soMeta;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.gooeyBlue;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.eggBrown;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.telltaleKeeby;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.royalYarn;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.smileyWhite;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.edd;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.musiciansLight;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.aege;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.stray;
	i += 1;
	#endregion
	
	#region Green
	spraysArray[# i,0] = playerSprayPaints.glitch;
	i += 1;
	#endregion
	
	spraysMax = i;
}