///@description Player - Ability Hat Palette
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_HatPalette(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var hatPaletteIndex = -1;
	
	switch (selectedCharacter)
	{
		case playerCharacters.kirby:
		switch (abilityToCheck)
		{
			case playerAbilities.cutter:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeCutterP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeCutterP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeCutterP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeCutterP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.cutter_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteCutterKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteCutterKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteCutterKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteCutterKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.cutter_kssu_slicingGold:
					hatPaletteIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_SlicingGold;
					break;
					
					case abilityHatPaints.cutter_kssu_bloodBlade:
					hatPaletteIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_BloodBlade;
					break;
					
					case abilityHatPaints.cutter_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.cutter_kssu_mallardGreen:
					hatPaletteIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_MallardGreen;
					break;
					
					case abilityHatPaints.cutter_kssu_blackSwedish:
					hatPaletteIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_BlackSwedish;
					break;
					
					case abilityHatPaints.cutter_kssu_fluxNostalgia:
					hatPaletteIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_FluxNostalgia;
					break;
					
					case abilityHatPaints.cutter_kssu_silverAndGold:
					hatPaletteIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_SilverAndGold;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.beam:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeBeamP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeBeamP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeBeamP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeBeamP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.beam_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteBeamKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteBeamKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteBeamKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteBeamKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.beam_kssu_sparklingBeam:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_SparklingBeam;
					break;
					
					case abilityHatPaints.beam_kssu_fluxNostalgia:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_FluxNostalgia;
					break;
					
					case abilityHatPaints.beam_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.beam_kssu_chessmaster:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_Chessmaster;
					break;
					
					case abilityHatPaints.beam_kssu_cottonCandy:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_CottonCandy;
					break;
					
					case abilityHatPaints.beam_kssu_frostyMage:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_FrostyMage;
					break;
					
					case abilityHatPaints.beam_kssu_lemonLime:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_LemonLime;
					break;
					
					case abilityHatPaints.beam_kssu_mixingPaints:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_MixingPaints;
					break;
					
					case abilityHatPaints.beam_kssu_whosIdeaWasThis:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_WhosIdeaWasThis;
					break;
				}
				break;
				
				case abilityHatSkins.beam_marxSoul:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteBeamMarxSoulP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteBeamMarxSoulP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteBeamMarxSoulP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteBeamMarxSoulP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.beam_marxSoul_jesterSpirit:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Palette_JesterSpirit;
					break;
					
					case abilityHatPaints.beam_marxSoul_summerFruits:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Palette_SummerFruits;
					break;
					
					case abilityHatPaints.beam_marxSoul_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.mysticBeam:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeMysticBeamP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeMysticBeamP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeMysticBeamP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeMysticBeamP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.mysticBeam_ggs:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteMysticBeamGGSP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteMysticBeamGGSP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteMysticBeamGGSP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteMysticBeamGGSP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.mysticBeam_ggs_nastyFlux:
					hatPaletteIndex = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_NastyFlux;
					break;
					
					case abilityHatPaints.mysticBeam_ggs_mageRose:
					hatPaletteIndex = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_MageRose;
					break;
					
					case abilityHatPaints.mysticBeam_ggs_blueberry:
					hatPaletteIndex = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_Blueberry;
					break;
					
					case abilityHatPaints.mysticBeam_ggs_sourlime:
					hatPaletteIndex = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_Sourlime;
					break;
					
					case abilityHatPaints.mysticBeam_ggs_mono:
					hatPaletteIndex = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_Mono;
					break;
					
					case abilityHatPaints.mysticBeam_ggs_bubblegum:
					hatPaletteIndex = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_Bubblegum;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.stone:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeStoneP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeStoneP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeStoneP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeStoneP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.stone_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteStoneKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteStoneKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteStoneKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteStoneKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.stone_kssu_rockyRoad:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_KSSU_Palette_RockyRoad;
					break;
					
					case abilityHatPaints.stone_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case abilityHatSkins.stone_modern:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteStoneModernP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteStoneModernP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteStoneModernP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteStoneModernP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.stone_modern_rockyRoad:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_Modern_Palette_RockyRoad;
					break;
					
					case abilityHatPaints.stone_modern_moltenRock:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_Modern_Palette_MoltenRock;
					break;
					
					case abilityHatPaints.stone_modern_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_Modern_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.stone_modern_cryingCobblestone:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_Modern_Palette_CryingCobblestone;
					break;
					
					case abilityHatPaints.stone_modern_theBronzeJade:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_Modern_Palette_TheBronzeJade;
					break;
				}
				break;
			}
			break;
			
			/*case playerAbilities.ufo:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeUfoP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeUfoP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeUfoP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeUfoP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.ufo_modern:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteUfoModernP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteUfoModernP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteUfoModernP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteUfoModernP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_SparklingBeam;
					break;
				}
				break;
			}
			break;*/
			
			case playerAbilities.mirror:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeMirrorP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeMirrorP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeMirrorP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeMirrorP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.mirror_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteMirrorKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteMirrorKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteMirrorKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteMirrorKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.mirror_kssu_jesterReflection:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_JesterReflection;
					break;
					
					case abilityHatPaints.mirror_kssu_betaBlock:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_BetaBlock;
					break;
					
					case abilityHatPaints.mirror_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case abilityHatSkins.mirror_modern:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteMirrorModernP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteMirrorModernP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteMirrorModernP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteMirrorModernP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.mirror_modern_jesterReflection:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_Modern_Palette_JesterReflection;
					break;
					
					case abilityHatPaints.mirror_modern_betaBlock:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_Modern_Palette_BetaBlock;
					break;
					
					case abilityHatPaints.mirror_modern_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_Modern_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.ninja:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeNinjaP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeNinjaP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeNinjaP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeNinjaP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.ninja_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteNinjaKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteNinjaKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteNinjaKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteNinjaKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.ninja_kssu_stealthyMaroon:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_StealthyMaroon;
					break;
					
					case abilityHatPaints.ninja_kssu_silverLinedWarrior:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_SilverLinedWarrior;
					break;
					
					case abilityHatPaints.ninja_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case abilityHatSkins.ninja_modern:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteNinjaModernP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteNinjaModernP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteNinjaModernP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteNinjaModernP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.ninja_modern_stealthyMaroon:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_Modern_Palette_StealthyMaroon;
					break;
					
					case abilityHatPaints.ninja_modern_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_Modern_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.ninja_modern_viridianAmbush:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_Modern_Palette_ViridianAmbush;
					break;
				}
				break;
				
				case abilityHatSkins.ninja_samurai:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteNinjaModernP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteNinjaModernP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteNinjaModernP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteNinjaModernP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.ninja_samurai_menacingBlack:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_Samurai_Palette_MenacingBlack;
					break;
					
					case abilityHatPaints.ninja_samurai_classicRed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_Samurai_Palette_ClassicRed;
					break;
					
					case abilityHatPaints.ninja_samurai_darkBrown:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_Samurai_Palette_DarkBrown;
					break;
					
					case abilityHatPaints.ninja_samurai_ripperBlond:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_Samurai_Palette_RipperBlond;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.bomb:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeBombP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeBombP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeBombP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeBombP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.bomb_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteBombKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteBombKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteBombKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteBombKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.bomb_kssu_explosiveB:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_ExplosiveB;
					break;
					
					case abilityHatPaints.bomb_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.bomb_kssu_bloomingPoppy:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_BloomingPoppy;
					break;
				}
				break;
				
				case abilityHatSkins.bomb_modern:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteBombModernP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteBombModernP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteBombModernP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteBombModernP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.bomb_modern_explosiveB:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_Modern_Palette_ExplosiveB;
					break;
					
					case abilityHatPaints.bomb_modern_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_Modern_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.bomb_modern_outburstingConspiracy:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_Modern_Palette_OutburstingConspiracy;
					break;
					
					case abilityHatPaints.bomb_modern_dragonsCastle:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_Modern_Palette_DragonsCastle;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.fire:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeFireP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeFireP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeFireP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeFireP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.fire_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteFireKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteFireKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteFireKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteFireKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.fire_kssu_scorchingScarlet:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_ScorchingScarlet;
					break;
					
					case abilityHatPaints.fire_kssu_blazingBlue:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_BlazingBlue;
					break;
					
					case abilityHatPaints.fire_kssu_fluxNostalgia:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_FluxNostalgia;
					break;
					
					case abilityHatPaints.fire_kssu_scarletRose:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_ScarletRose;
					break;
					
					case abilityHatPaints.fire_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.fire_kssu_nuclearMeltdown:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_NuclearMeltdown;
					break;
					
					case abilityHatPaints.fire_kssu_midnightInferno:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_MidnightInferno;
					break;
					
					case abilityHatPaints.fire_kssu_hotPink:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_HotPink;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.mysticFire:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeFireP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeFireP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeFireP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeFireP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.mysticFire_ggs:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteFireKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteFireKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteFireKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteFireKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_FluxNostalgia;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.ice:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeIceP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeIceP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeIceP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeIceP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.ice_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteIceKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteIceKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteIceKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteIceKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.ice_kssu_frostedShard:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_KSSU_Palette_FrostedShard;
					break;
					
					case abilityHatPaints.ice_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_KSSU_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.ice_kssu_frostyObsidian:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_KSSU_Palette_FrostyObsidian;
					break;
					
					case abilityHatPaints.ice_kssu_fluxNostalgia:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_KSSU_Palette_FluxNostalgia;
					break;
				}
				break;
				
				case abilityHatSkins.ice_snowman:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteIceSnowmanP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteIceSnowmanP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteIceSnowmanP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteIceSnowmanP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.ice_snowman_chilly:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_Snowman_Palette_Chilly;
					break;
					
					case abilityHatPaints.ice_snowman_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_Snowman_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.ice_snowman_chocolateMousse:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_Snowman_Palette_ChocolateMousse;
					break;
					
					case abilityHatPaints.ice_snowman_strawberryCream:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_Snowman_Palette_StrawberryCream;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.spark:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeSparkP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeSparkP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeSparkP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeSparkP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.spark_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteSparkKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteSparkKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteSparkKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteSparkKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.spark_kssu_electroMarine:
					hatPaletteIndex = spr_Kirby_AbilityHat_Spark_KSSU_Palette_ElectroMarine;
					break;
					
					case abilityHatPaints.spark_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Spark_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.yoyo:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeYoyoP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeYoyoP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeYoyoP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeYoyoP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.yoyo_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteYoyoKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteYoyoKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteYoyoKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteYoyoKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.yoyo_kssu_spinningViolet:
					hatPaletteIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Palette_SpinningViolet;
					break;
					
					case abilityHatPaints.yoyo_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.wheel:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeWheelP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeWheelP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeWheelP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeWheelP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.wheel_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteWheelKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteWheelKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteWheelKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteWheelKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.wheel_kssu_rushingRed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_RushingRed;
					break;
					
					case abilityHatPaints.wheel_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.wheel_kssu_mufflerBlue:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_MufflerBlue;
					break;
					
					case abilityHatPaints.wheel_kssu_fluxNostalgia:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_FluxNostalgia;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.artist:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeArtistP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeArtistP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeArtistP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeArtistP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.artist_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteArtistKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteArtistKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteArtistKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteArtistKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.artist_kssu_dapperPainter:
					hatPaletteIndex = spr_Kirby_AbilityHat_Artist_KSSU_Palette_DapperPainter;
					break;
					
					case abilityHatPaints.artist_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Artist_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case abilityHatSkins.artist_modern:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteArtistKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteArtistKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteArtistKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteArtistKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Artist_KSSU_Palette_DapperPainter;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.fighter:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeFighterP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeFighterP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeFighterP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeFighterP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.fighter_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteFighterKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteKFighterSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteFighterKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteFighterKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.fighter_kssu_crimsonChampion:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Palette_CrimsonChampion;
					break;
					
					case abilityHatPaints.fighter_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.suplex:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeSuplexP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeSuplexP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeSuplexP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeSuplexP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.suplex_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteSuplexKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteSuplexKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteSuplexKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteSuplexKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.suplex_kssu_blueBanner:
					hatPaletteIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Palette_BlueBanner;
					break;
					
					case abilityHatPaints.suplex_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.wing:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeWingP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeWingP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeWingP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeWingP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.wing_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteWingKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteWingKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteWingKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteWingKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.wing_kssu_rainbowFlight:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wing_KSSU_Palette_RainbowFlight;
					break;
					
					case abilityHatPaints.wing_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wing_KSSU_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.wing_kssu_pekinBreeze:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wing_KSSU_Palette_PekinBreeze;
					break;
					
					case abilityHatPaints.wing_kssu_dynaBlade:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wing_KSSU_Palette_DynaBlade;
					break;
					
					case abilityHatPaints.wing_kssu_nocturneFriend:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wing_KSSU_Palette_NocturneFriend;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.jet:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeJetP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeJetP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeJetP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeJetP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.jet_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteJetKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteJetKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteJetKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteJetKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.jet_kssu_speedMachine:
					hatPaletteIndex = spr_Kirby_AbilityHat_Jet_KSSU_Palette_SpeedMachine;
					break;
					
					case abilityHatPaints.jet_kssu_speedyScarlet:
					hatPaletteIndex = spr_Kirby_AbilityHat_Jet_KSSU_Palette_SpeedyScarlet;
					break;
					
					case abilityHatPaints.jet_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Jet_KSSU_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.jet_kssu_lavender01:
					hatPaletteIndex = spr_Kirby_AbilityHat_Jet_KSSU_Palette_Lavender01;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.sword:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeSwordP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeSwordP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeSwordP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeSwordP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.sword_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteSwordKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteSwordKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteSwordKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteSwordKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.sword_kssu_slicingGreen:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sword_KSSU_Palette_SlicingGreen;
					break;
					
					case abilityHatPaints.sword_kssu_thunderingCloud:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sword_KSSU_Palette_ThunderingCloud;
					break;
					
					case abilityHatPaints.sword_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sword_KSSU_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.sword_kssu_fluxNostalgia:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sword_KSSU_Palette_FluxNostalgia;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.parasol:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeParasolP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeParasolP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeParasolP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeParasolP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.parasol_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteParasolKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteParasolKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteParasolKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteParasolKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.parasol_kssu_lazyRed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_LazyRed;
					break;
					
					case abilityHatPaints.parasol_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.parasol_kssu_wagasaDee:
					hatPaletteIndex = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_WagasaDee;
					break;
					
					case abilityHatPaints.parasol_kssu_azureBandanna:
					hatPaletteIndex = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_AzureBandanna;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.hammer:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeHammerP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeHammerP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeHammerP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeHammerP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.hammer_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteHammerKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteHammerKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteHammerKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteHammerKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.hammer_kssu_crushingBrown:
					hatPaletteIndex = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_CrushingBrown;
					break;
					
					case abilityHatPaints.hammer_kssu_constructionWork:
					hatPaletteIndex = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_ConstructionWork;
					break;
					
					case abilityHatPaints.hammer_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.hammer_kssu_fluxNostalgia:
					hatPaletteIndex = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_FluxNostalgia;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.bell:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeBellP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeBellP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeBellP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeBellP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.bell_modern:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteBellModernP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteBellModernP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteBellModern3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteBellModernP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.bell_modern_dazzlingDefault:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_DazzlingDefault;
					break;
					
					case abilityHatPaints.bell_modern_prestoPurple:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_PrestoPurple;
					break;
					
					case abilityHatPaints.bell_modern_tempoTeal:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_TempoTeal;
					break;
					
					case abilityHatPaints.bell_modern_ringingRose:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_RingingRose;
					break;
					
					case abilityHatPaints.bell_modern_candescentCopper:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_CandescentCopper;
					break;
					
					case abilityHatPaints.bell_modern_shiningSilver:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_ShiningSilver;
					break;
					
					case abilityHatPaints.bell_modern_polishedPlant:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_PolishedPlant;
					break;
					
					case abilityHatPaints.bell_modern_illuminatedIvory:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_IlluminatedIvory;
					break;
					
					case abilityHatPaints.bell_modern_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.sleep:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeSleepP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeSleepP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeSleepP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeSleepP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.sleep_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteSleepKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteSleepKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteSleepKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteSleepKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.sleep_kssu_bubblyGreen:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_BubblyGreen;
					break;
					
					case abilityHatPaints.sleep_kssu_noddyPeach:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_NoddyPeach;
					break;
					
					case abilityHatPaints.sleep_kssu_royalPurple:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_RoyalPurple;
					break;
					
					case abilityHatPaints.sleep_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.scan:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeScanP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeScanP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeScanP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeScanP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.scan_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteScanKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteScanKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteScanKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteScanKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.scan_kssu_metallicRed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Scan_KSSU_Palette_MetallicRed;
					break;
					
					case abilityHatPaints.scan_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Scan_KSSU_Palette_Bitcrushed;
					break;
					
					case abilityHatPaints.scan_kssu_militaryGreen:
					hatPaletteIndex = spr_Kirby_AbilityHat_Scan_KSSU_Palette_MilitaryGreen;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.mic:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeMicP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeMicP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeMicP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeMicP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.mic_kssu:
				switch (player)
				{
					case 0:
					var paletteIndexToCheck = global.hatPaletteMicKSSUP1;
					break;
					
					case 1:
					var paletteIndexToCheck = global.hatPaletteMicKSSUP2;
					break;
					
					case 2:
					var paletteIndexToCheck = global.hatPaletteMicKSSUP3;
					break;
					
					case 3:
					var paletteIndexToCheck = global.hatPaletteMicKSSUP4;
					break;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.mic_kssu_loudMike:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mic_KSSU_Palette_LoudMike;
					break;
				}
				break;
			}
			break;
		}
		break;
	}
	return hatPaletteIndex;
}