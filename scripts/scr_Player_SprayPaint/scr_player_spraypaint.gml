///@description Player - Spray Paint
///@param {real} paintToCheck Which paint to check.
///@param {real} selectedCharacter Which character to check.
///@param {real} selectedSkin Which skin to check.

function scr_Player_SprayPaint(argument0,argument1,argument2)
{
	var paintToCheck = argument0;
	var selectedCharacter = argument1;
	var selectedSkin = argument2;
	var sprayPaintIndex;
	
	switch (selectedCharacter)
	{
		#region Kirby
		case playerCharacters.kirby:
		switch (selectedSkin)
		{
			#region Normal
			default:
			switch (paintToCheck)
			{
				case playerSprayPaints.friendlyPink:
				sprayPaintIndex = spr_Kirby_Normal_Palette_FriendlyPink;
				break;
				
				case playerSprayPaints.yellow:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Yellow;
				break;
				
				case playerSprayPaints.red:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Red;
				break;
				
				case playerSprayPaints.green:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Green;
				break;
				
				case playerSprayPaints.dreamyBlueberry:
				sprayPaintIndex = spr_Kirby_Normal_Palette_DreamyBlueberry;
				break;
				
				case playerSprayPaints.carbon:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Carbon;
				break;
				
				case playerSprayPaints.cherry:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Cherry;
				break;
				
				case playerSprayPaints.deepFriedKirb:
				sprayPaintIndex = spr_Kirby_Normal_Palette_DeepFriedKirb;
				break;
				
				case playerSprayPaints.emerald:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Emerald;
				break;
				
				case playerSprayPaints.gameKirb:
				sprayPaintIndex = spr_Kirby_Normal_Palette_GameKirb;
				break;
				
				case playerSprayPaints.hauntingPurple:
				sprayPaintIndex = spr_Kirby_Normal_Palette_HauntingPurple;
				break;
				
				case playerSprayPaints.invisSprinkle:
				sprayPaintIndex = spr_Kirby_Normal_Palette_InvisSprinkle;
				break;
				
				case playerSprayPaints.monochromeKirb:
				sprayPaintIndex = spr_Kirby_Normal_Palette_MonochromeKirb;
				break;
				
				case playerSprayPaints.yolkTemple:
				sprayPaintIndex = spr_Kirby_Normal_Palette_YolkTemple;
				break;
				
				case playerSprayPaints.plumpTomato:
				sprayPaintIndex = spr_Kirby_Normal_Palette_PlumpTomato;
				break;
				
				case playerSprayPaints.waddleWaddle:
				sprayPaintIndex = spr_Kirby_Normal_Palette_WaddleWaddle;
				break;
				
				case playerSprayPaints.mystic:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Mystic;
				break;
				
				case playerSprayPaints.shadowOfTheMirror:
				sprayPaintIndex = spr_Kirby_Normal_Palette_ShadowOfTheMirror;
				break;
				
				case playerSprayPaints.delirious:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Delirious;
				break;
				
				case playerSprayPaints.greenjolt:
				sprayPaintIndex = spr_Kirby_Normal_Palette_GreenJolt;
				break;
				
				case playerSprayPaints.butterKnife:
				sprayPaintIndex = spr_Kirby_Normal_Palette_ButterKnife;
				break;
				
				case playerSprayPaints.blurple:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Blurple;
				break;
				
				case playerSprayPaints.beam:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Beam;
				break;
				
				case playerSprayPaints.stone:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Stone;
				break;
				
				case playerSprayPaints.mirror:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Mirror;
				break;
				
				case playerSprayPaints.ninja:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Ninja;
				break;
				
				case playerSprayPaints.fire:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Fire;
				break;
				
				case playerSprayPaints.ice:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Ice;
				break;
				
				case playerSprayPaints.plasma:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Plasma;
				break;
				
				case playerSprayPaints.unearthlyHand:
				sprayPaintIndex = spr_Kirby_Normal_Palette_UnearthlyHand;
				break;
				
				case playerSprayPaints.soMeta:
				sprayPaintIndex = spr_Kirby_Normal_Palette_SoMeta;
				break;
				
				case playerSprayPaints.gooeyBlue:
				sprayPaintIndex = spr_Kirby_Normal_Palette_GooeyBlue;
				break;
				
				case playerSprayPaints.eggBrown:
				sprayPaintIndex = spr_Kirby_Normal_Palette_EggBrown;
				break;
				
				case playerSprayPaints.telltaleKeeby:
				sprayPaintIndex = spr_Kirby_Normal_Palette_TelltaleKeeby;
				break;
				
				case playerSprayPaints.royalYarn:
				sprayPaintIndex = spr_Kirby_Normal_Palette_RoyalYarn;
				break;
				
				case playerSprayPaints.smileyWhite:
				sprayPaintIndex = spr_Kirby_Normal_Palette_SmileyWhite;
				break;
				
				case playerSprayPaints.edd:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Edd;
				break;
				
				case playerSprayPaints.musiciansLight:
				sprayPaintIndex = spr_Kirby_Normal_Palette_MusiciansLight;
				break;
				
				case playerSprayPaints.aege:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Aege;
				break;
				
				case playerSprayPaints.stray:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Stray;
				break;
				
				case playerSprayPaints.glitch:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Glitch;
				break;
				
				default:
				sprayPaintIndex = spr_Kirby_Normal_Palette_FriendlyPink;
				break;
			}
			break;
			#endregion
		}
		break;
		#endregion
		
		#region Gamble
		case playerCharacters.gamble:
		switch (selectedSkin)
		{
			#region Normal
			default:
			switch (paintToCheck)
			{
				case playerSprayPaints.friendlyPink:
				sprayPaintIndex = spr_Kirby_Normal_Palette_FriendlyPink;
				break;
				
				case playerSprayPaints.yellow:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Yellow;
				break;
				
				case playerSprayPaints.red:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Red;
				break;
				
				case playerSprayPaints.green:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Green;
				break;
				
				case playerSprayPaints.dreamyBlueberry:
				sprayPaintIndex = spr_Kirby_Normal_Palette_DreamyBlueberry;
				break;
				
				case playerSprayPaints.carbon:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Carbon;
				break;
				
				case playerSprayPaints.cherry:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Cherry;
				break;
				
				case playerSprayPaints.deepFriedKirb:
				sprayPaintIndex = spr_Kirby_Normal_Palette_DeepFriedKirb;
				break;
				
				case playerSprayPaints.emerald:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Emerald;
				break;
				
				case playerSprayPaints.gameKirb:
				sprayPaintIndex = spr_Kirby_Normal_Palette_GameKirb;
				break;
				
				case playerSprayPaints.hauntingPurple:
				sprayPaintIndex = spr_Kirby_Normal_Palette_HauntingPurple;
				break;
				
				case playerSprayPaints.invisSprinkle:
				sprayPaintIndex = spr_Kirby_Normal_Palette_InvisSprinkle;
				break;
				
				case playerSprayPaints.monochromeKirb:
				sprayPaintIndex = spr_Kirby_Normal_Palette_MonochromeKirb;
				break;
				
				case playerSprayPaints.yolkTemple:
				sprayPaintIndex = spr_Kirby_Normal_Palette_YolkTemple;
				break;
				
				case playerSprayPaints.plumpTomato:
				sprayPaintIndex = spr_Kirby_Normal_Palette_PlumpTomato;
				break;
				
				case playerSprayPaints.waddleWaddle:
				sprayPaintIndex = spr_Kirby_Normal_Palette_WaddleWaddle;
				break;
				
				case playerSprayPaints.mystic:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Mystic;
				break;
				
				case playerSprayPaints.shadowOfTheMirror:
				sprayPaintIndex = spr_Kirby_Normal_Palette_ShadowOfTheMirror;
				break;
				
				case playerSprayPaints.delirious:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Delirious;
				break;
				
				case playerSprayPaints.greenjolt:
				sprayPaintIndex = spr_Kirby_Normal_Palette_GreenJolt;
				break;
				
				case playerSprayPaints.butterKnife:
				sprayPaintIndex = spr_Kirby_Normal_Palette_ButterKnife;
				break;
				
				case playerSprayPaints.blurple:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Blurple;
				break;
				
				case playerSprayPaints.beam:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Beam;
				break;
				
				case playerSprayPaints.stone:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Stone;
				break;
				
				case playerSprayPaints.mirror:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Mirror;
				break;
				
				case playerSprayPaints.ninja:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Ninja;
				break;
				
				case playerSprayPaints.fire:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Fire;
				break;
				
				case playerSprayPaints.ice:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Ice;
				break;
				
				case playerSprayPaints.plasma:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Plasma;
				break;
				
				case playerSprayPaints.unearthlyHand:
				sprayPaintIndex = spr_Kirby_Normal_Palette_UnearthlyHand;
				break;
				
				case playerSprayPaints.soMeta:
				sprayPaintIndex = spr_Kirby_Normal_Palette_SoMeta;
				break;
				
				case playerSprayPaints.gooeyBlue:
				sprayPaintIndex = spr_Kirby_Normal_Palette_GooeyBlue;
				break;
				
				case playerSprayPaints.eggBrown:
				sprayPaintIndex = spr_Kirby_Normal_Palette_EggBrown;
				break;
				
				case playerSprayPaints.telltaleKeeby:
				sprayPaintIndex = spr_Kirby_Normal_Palette_TelltaleKeeby;
				break;
				
				case playerSprayPaints.royalYarn:
				sprayPaintIndex = spr_Kirby_Normal_Palette_RoyalYarn;
				break;
				
				case playerSprayPaints.smileyWhite:
				sprayPaintIndex = spr_Kirby_Normal_Palette_SmileyWhite;
				break;
				
				case playerSprayPaints.edd:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Edd;
				break;
				
				case playerSprayPaints.musiciansLight:
				sprayPaintIndex = spr_Kirby_Normal_Palette_MusiciansLight;
				break;
				
				case playerSprayPaints.aege:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Aege;
				break;
				
				case playerSprayPaints.stray:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Stray;
				break;
				
				case playerSprayPaints.glitch:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Glitch;
				break;
				
				default:
				sprayPaintIndex = spr_Kirby_Normal_Palette_FriendlyPink;
				break;
			}
			break;
			#endregion
		}
		break;
		#endregion
		
		#region Meta Knight
		case playerCharacters.metaKnight:
		switch (selectedSkin)
		{
			#region Normal
			default:
			switch (paintToCheck)
			{
				case playerSprayPaints.friendlyPink:
				sprayPaintIndex = spr_Kirby_Normal_Palette_FriendlyPink;
				break;
				
				case playerSprayPaints.yellow:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Yellow;
				break;
				
				case playerSprayPaints.red:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Red;
				break;
				
				case playerSprayPaints.green:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Green;
				break;
				
				case playerSprayPaints.dreamyBlueberry:
				sprayPaintIndex = spr_Kirby_Normal_Palette_DreamyBlueberry;
				break;
				
				case playerSprayPaints.carbon:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Carbon;
				break;
				
				case playerSprayPaints.cherry:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Cherry;
				break;
				
				case playerSprayPaints.deepFriedKirb:
				sprayPaintIndex = spr_Kirby_Normal_Palette_DeepFriedKirb;
				break;
				
				case playerSprayPaints.emerald:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Emerald;
				break;
				
				case playerSprayPaints.gameKirb:
				sprayPaintIndex = spr_Kirby_Normal_Palette_GameKirb;
				break;
				
				case playerSprayPaints.hauntingPurple:
				sprayPaintIndex = spr_Kirby_Normal_Palette_HauntingPurple;
				break;
				
				case playerSprayPaints.invisSprinkle:
				sprayPaintIndex = spr_Kirby_Normal_Palette_InvisSprinkle;
				break;
				
				case playerSprayPaints.monochromeKirb:
				sprayPaintIndex = spr_Kirby_Normal_Palette_MonochromeKirb;
				break;
				
				case playerSprayPaints.yolkTemple:
				sprayPaintIndex = spr_Kirby_Normal_Palette_YolkTemple;
				break;
				
				case playerSprayPaints.plumpTomato:
				sprayPaintIndex = spr_Kirby_Normal_Palette_PlumpTomato;
				break;
				
				case playerSprayPaints.waddleWaddle:
				sprayPaintIndex = spr_Kirby_Normal_Palette_WaddleWaddle;
				break;
				
				case playerSprayPaints.mystic:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Mystic;
				break;
				
				case playerSprayPaints.shadowOfTheMirror:
				sprayPaintIndex = spr_Kirby_Normal_Palette_ShadowOfTheMirror;
				break;
				
				case playerSprayPaints.delirious:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Delirious;
				break;
				
				case playerSprayPaints.greenjolt:
				sprayPaintIndex = spr_Kirby_Normal_Palette_GreenJolt;
				break;
				
				case playerSprayPaints.butterKnife:
				sprayPaintIndex = spr_Kirby_Normal_Palette_ButterKnife;
				break;
				
				case playerSprayPaints.blurple:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Blurple;
				break;
				
				case playerSprayPaints.beam:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Beam;
				break;
				
				case playerSprayPaints.stone:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Stone;
				break;
				
				case playerSprayPaints.mirror:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Mirror;
				break;
				
				case playerSprayPaints.ninja:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Ninja;
				break;
				
				case playerSprayPaints.fire:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Fire;
				break;
				
				case playerSprayPaints.ice:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Ice;
				break;
				
				case playerSprayPaints.plasma:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Plasma;
				break;
				
				case playerSprayPaints.unearthlyHand:
				sprayPaintIndex = spr_Kirby_Normal_Palette_UnearthlyHand;
				break;
				
				case playerSprayPaints.soMeta:
				sprayPaintIndex = spr_Kirby_Normal_Palette_SoMeta;
				break;
				
				case playerSprayPaints.gooeyBlue:
				sprayPaintIndex = spr_Kirby_Normal_Palette_GooeyBlue;
				break;
				
				case playerSprayPaints.eggBrown:
				sprayPaintIndex = spr_Kirby_Normal_Palette_EggBrown;
				break;
				
				case playerSprayPaints.telltaleKeeby:
				sprayPaintIndex = spr_Kirby_Normal_Palette_TelltaleKeeby;
				break;
				
				case playerSprayPaints.royalYarn:
				sprayPaintIndex = spr_Kirby_Normal_Palette_RoyalYarn;
				break;
				
				case playerSprayPaints.smileyWhite:
				sprayPaintIndex = spr_Kirby_Normal_Palette_SmileyWhite;
				break;
				
				case playerSprayPaints.edd:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Edd;
				break;
				
				case playerSprayPaints.musiciansLight:
				sprayPaintIndex = spr_Kirby_Normal_Palette_MusiciansLight;
				break;
				
				case playerSprayPaints.aege:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Aege;
				break;
				
				case playerSprayPaints.stray:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Stray;
				break;
				
				case playerSprayPaints.glitch:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Glitch;
				break;
				
				default:
				sprayPaintIndex = spr_Kirby_Normal_Palette_FriendlyPink;
				break;
			}
			break;
			#endregion
		}
		break;
		#endregion
		
		#region Gooey
		case playerCharacters.gooey:
		switch (selectedSkin)
		{
			#region Normal
			default:
			switch (paintToCheck)
			{
				case playerSprayPaints.friendlyPink:
				sprayPaintIndex = spr_Gooey_Normal_Palette_FriendlyPink;
				break;
				
				case playerSprayPaints.yellow:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Yellow;
				break;
				
				case playerSprayPaints.red:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Red;
				break;
				
				case playerSprayPaints.green:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Green;
				break;
				
				case playerSprayPaints.dreamyBlueberry:
				sprayPaintIndex = spr_Gooey_Normal_Palette_DreamyBlueberry;
				break;
				
				case playerSprayPaints.carbon:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Carbon;
				break;
				
				case playerSprayPaints.cherry:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Cherry;
				break;
				
				case playerSprayPaints.deepFriedKirb:
				sprayPaintIndex = spr_Gooey_Normal_Palette_DeepFriedKirb;
				break;
				
				case playerSprayPaints.emerald:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Emerald;
				break;
				
				case playerSprayPaints.gameKirb:
				sprayPaintIndex = spr_Gooey_Normal_Palette_GameKirb;
				break;
				
				case playerSprayPaints.hauntingPurple:
				sprayPaintIndex = spr_Gooey_Normal_Palette_HauntingPurple;
				break;
				
				case playerSprayPaints.invisSprinkle:
				sprayPaintIndex = spr_Gooey_Normal_Palette_InvisSprinkle;
				break;
				
				case playerSprayPaints.monochromeKirb:
				sprayPaintIndex = spr_Gooey_Normal_Palette_MonochromeKirb;
				break;
				
				case playerSprayPaints.yolkTemple:
				sprayPaintIndex = spr_Gooey_Normal_Palette_YolkTemple;
				break;
				
				case playerSprayPaints.plumpTomato:
				sprayPaintIndex = spr_Gooey_Normal_Palette_PlumpTomato;
				break;
				
				case playerSprayPaints.waddleWaddle:
				sprayPaintIndex = spr_Gooey_Normal_Palette_WaddleWaddle;
				break;
				
				case playerSprayPaints.mystic:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Mystic;
				break;
				
				case playerSprayPaints.shadowOfTheMirror:
				sprayPaintIndex = spr_Gooey_Normal_Palette_ShadowOfTheMirror;
				break;
				
				case playerSprayPaints.delirious:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Delirious;
				break;
				
				case playerSprayPaints.greenjolt:
				sprayPaintIndex = spr_Gooey_Normal_Palette_GreenJolt;
				break;
				
				case playerSprayPaints.butterKnife:
				sprayPaintIndex = spr_Gooey_Normal_Palette_ButterKnife;
				break;
				
				case playerSprayPaints.blurple:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Blurple;
				break;
				
				case playerSprayPaints.beam:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Beam;
				break;
				
				case playerSprayPaints.stone:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Stone;
				break;
				
				case playerSprayPaints.mirror:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Mirror;
				break;
				
				case playerSprayPaints.ninja:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Ninja;
				break;
				
				case playerSprayPaints.fire:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Fire;
				break;
				
				case playerSprayPaints.ice:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Ice;
				break;
				
				case playerSprayPaints.plasma:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Plasma;
				break;
				
				case playerSprayPaints.unearthlyHand:
				sprayPaintIndex = spr_Gooey_Normal_Palette_UnearthlyHand;
				break;
				
				case playerSprayPaints.soMeta:
				sprayPaintIndex = spr_Gooey_Normal_Palette_SoMeta;
				break;
				
				case playerSprayPaints.gooeyBlue:
				sprayPaintIndex = spr_Gooey_Normal_Palette_GooeyBlue;
				break;
				
				case playerSprayPaints.eggBrown:
				sprayPaintIndex = spr_Gooey_Normal_Palette_EggBrown;
				break;
				
				case playerSprayPaints.telltaleKeeby:
				sprayPaintIndex = spr_Gooey_Normal_Palette_TelltaleKeeby;
				break;
				
				case playerSprayPaints.royalYarn:
				sprayPaintIndex = spr_Gooey_Normal_Palette_RoyalYarn;
				break;
				
				case playerSprayPaints.smileyWhite:
				sprayPaintIndex = spr_Gooey_Normal_Palette_SmileyWhite;
				break;
				
				case playerSprayPaints.edd:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Edd;
				break;
				
				case playerSprayPaints.musiciansLight:
				sprayPaintIndex = spr_Gooey_Normal_Palette_MusiciansLight;
				break;
				
				case playerSprayPaints.aege:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Aege;
				break;
				
				case playerSprayPaints.stray:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Stray;
				break;
				
				case playerSprayPaints.glitch:
				sprayPaintIndex = spr_Gooey_Normal_Palette_Glitch;
				break;
				
				default:
				sprayPaintIndex = spr_Gooey_Normal_Palette_GooeyBlue;
				break;
			}
			break;
			#endregion
			
			#region Pipis
			case "pipis":
			switch (paintToCheck)
			{
				case playerSprayPaints.friendlyPink:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_FriendlyPink;
				break;
				
				case playerSprayPaints.yellow:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Yellow;
				break;
				
				case playerSprayPaints.red:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Red;
				break;
				
				case playerSprayPaints.green:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Green;
				break;
				
				case playerSprayPaints.dreamyBlueberry:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_DreamyBlueberry;
				break;
				
				case playerSprayPaints.carbon:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Carbon;
				break;
				
				case playerSprayPaints.cherry:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Cherry;
				break;
				
				case playerSprayPaints.deepFriedKirb:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_DeepFriedKirb;
				break;
				
				case playerSprayPaints.emerald:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Emerald;
				break;
				
				case playerSprayPaints.gameKirb:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_GameKirb;
				break;
				
				case playerSprayPaints.hauntingPurple:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_HauntingPurple;
				break;
				
				case playerSprayPaints.invisSprinkle:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_InvisSprinkle;
				break;
				
				case playerSprayPaints.monochromeKirb:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_MonochromeKirb;
				break;
				
				case playerSprayPaints.yolkTemple:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_YolkTemple;
				break;
				
				case playerSprayPaints.plumpTomato:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_PlumpTomato;
				break;
				
				case playerSprayPaints.waddleWaddle:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_WaddleWaddle;
				break;
				
				case playerSprayPaints.mystic:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Mystic;
				break;
				
				case playerSprayPaints.shadowOfTheMirror:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_ShadowOfTheMirror;
				break;
				
				case playerSprayPaints.delirious:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Delirious;
				break;
				
				case playerSprayPaints.greenjolt:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_GreenJolt;
				break;
				
				case playerSprayPaints.butterKnife:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_ButterKnife;
				break;
				
				case playerSprayPaints.blurple:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Blurple;
				break;
				
				case playerSprayPaints.beam:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Beam;
				break;
				
				case playerSprayPaints.stone:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Stone;
				break;
				
				case playerSprayPaints.mirror:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Mirror;
				break;
				
				case playerSprayPaints.ninja:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Ninja;
				break;
				
				case playerSprayPaints.fire:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Fire;
				break;
				
				case playerSprayPaints.ice:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Ice;
				break;
				
				case playerSprayPaints.plasma:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Plasma;
				break;
				
				case playerSprayPaints.unearthlyHand:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_UnearthlyHand;
				break;
				
				case playerSprayPaints.soMeta:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_SoMeta;
				break;
				
				case playerSprayPaints.gooeyBlue:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_GooeyBlue;
				break;
				
				case playerSprayPaints.eggBrown:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_EggBrown;
				break;
				
				case playerSprayPaints.telltaleKeeby:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_TelltaleKeeby;
				break;
				
				case playerSprayPaints.royalYarn:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_RoyalYarn;
				break;
				
				case playerSprayPaints.smileyWhite:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_SmileyWhite;
				break;
				
				case playerSprayPaints.edd:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Edd;
				break;
				
				case playerSprayPaints.musiciansLight:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_MusiciansLight;
				break;
				
				case playerSprayPaints.aege:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Aege;
				break;
				
				case playerSprayPaints.stray:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Stray;
				break;
				
				case playerSprayPaints.glitch:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_Glitch;
				break;
				
				default:
				sprayPaintIndex = spr_Gooey_Pipis_Palette_GooeyBlue;
				break;
			}
			break;
			#endregion
		}
		break;
		#endregion
		
		#region Magolor
		case playerCharacters.magolor:
		switch (selectedSkin)
		{
			#region Normal
			default:
			switch (paintToCheck)
			{
				case playerSprayPaints.friendlyPink:
				sprayPaintIndex = spr_Kirby_Normal_Palette_FriendlyPink;
				break;
				
				case playerSprayPaints.yellow:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Yellow;
				break;
				
				case playerSprayPaints.red:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Red;
				break;
				
				case playerSprayPaints.green:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Green;
				break;
				
				case playerSprayPaints.dreamyBlueberry:
				sprayPaintIndex = spr_Kirby_Normal_Palette_DreamyBlueberry;
				break;
				
				case playerSprayPaints.carbon:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Carbon;
				break;
				
				case playerSprayPaints.cherry:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Cherry;
				break;
				
				case playerSprayPaints.deepFriedKirb:
				sprayPaintIndex = spr_Kirby_Normal_Palette_DeepFriedKirb;
				break;
				
				case playerSprayPaints.emerald:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Emerald;
				break;
				
				case playerSprayPaints.gameKirb:
				sprayPaintIndex = spr_Kirby_Normal_Palette_GameKirb;
				break;
				
				case playerSprayPaints.hauntingPurple:
				sprayPaintIndex = spr_Kirby_Normal_Palette_HauntingPurple;
				break;
				
				case playerSprayPaints.invisSprinkle:
				sprayPaintIndex = spr_Kirby_Normal_Palette_InvisSprinkle;
				break;
				
				case playerSprayPaints.monochromeKirb:
				sprayPaintIndex = spr_Kirby_Normal_Palette_MonochromeKirb;
				break;
				
				case playerSprayPaints.yolkTemple:
				sprayPaintIndex = spr_Kirby_Normal_Palette_YolkTemple;
				break;
				
				case playerSprayPaints.plumpTomato:
				sprayPaintIndex = spr_Kirby_Normal_Palette_PlumpTomato;
				break;
				
				case playerSprayPaints.waddleWaddle:
				sprayPaintIndex = spr_Kirby_Normal_Palette_WaddleWaddle;
				break;
				
				case playerSprayPaints.mystic:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Mystic;
				break;
				
				case playerSprayPaints.shadowOfTheMirror:
				sprayPaintIndex = spr_Kirby_Normal_Palette_ShadowOfTheMirror;
				break;
				
				case playerSprayPaints.delirious:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Delirious;
				break;
				
				case playerSprayPaints.greenjolt:
				sprayPaintIndex = spr_Kirby_Normal_Palette_GreenJolt;
				break;
				
				case playerSprayPaints.butterKnife:
				sprayPaintIndex = spr_Kirby_Normal_Palette_ButterKnife;
				break;
				
				case playerSprayPaints.blurple:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Blurple;
				break;
				
				case playerSprayPaints.beam:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Beam;
				break;
				
				case playerSprayPaints.stone:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Stone;
				break;
				
				case playerSprayPaints.mirror:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Mirror;
				break;
				
				case playerSprayPaints.ninja:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Ninja;
				break;
				
				case playerSprayPaints.fire:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Fire;
				break;
				
				case playerSprayPaints.ice:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Ice;
				break;
				
				case playerSprayPaints.plasma:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Plasma;
				break;
				
				case playerSprayPaints.unearthlyHand:
				sprayPaintIndex = spr_Kirby_Normal_Palette_UnearthlyHand;
				break;
				
				case playerSprayPaints.soMeta:
				sprayPaintIndex = spr_Kirby_Normal_Palette_SoMeta;
				break;
				
				case playerSprayPaints.gooeyBlue:
				sprayPaintIndex = spr_Kirby_Normal_Palette_GooeyBlue;
				break;
				
				case playerSprayPaints.eggBrown:
				sprayPaintIndex = spr_Kirby_Normal_Palette_EggBrown;
				break;
				
				case playerSprayPaints.telltaleKeeby:
				sprayPaintIndex = spr_Kirby_Normal_Palette_TelltaleKeeby;
				break;
				
				case playerSprayPaints.royalYarn:
				sprayPaintIndex = spr_Kirby_Normal_Palette_RoyalYarn;
				break;
				
				case playerSprayPaints.smileyWhite:
				sprayPaintIndex = spr_Kirby_Normal_Palette_SmileyWhite;
				break;
				
				case playerSprayPaints.edd:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Edd;
				break;
				
				case playerSprayPaints.musiciansLight:
				sprayPaintIndex = spr_Kirby_Normal_Palette_MusiciansLight;
				break;
				
				case playerSprayPaints.aege:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Aege;
				break;
				
				case playerSprayPaints.stray:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Stray;
				break;
				
				case playerSprayPaints.glitch:
				sprayPaintIndex = spr_Kirby_Normal_Palette_Glitch;
				break;
				
				default:
				sprayPaintIndex = spr_Kirby_Normal_Palette_FriendlyPink;
				break;
			}
			break;
			#endregion
		}
		break;
		#endregion
		
		default:
		sprayPaintIndex = spr_Kirby_Normal_Palette_FriendlyPink;
		break;
	}
	
	return sprayPaintIndex;
}