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
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeCutterP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeCutterP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.cutter_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteCutterKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteCutterKSSUP2;
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
				}
				break;
			}
			break;
			
			case playerAbilities.beam:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeBeamP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeBeamP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.beam_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBeamKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBeamKSSUP2;
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
				}
				break;
				
				case abilityHatSkins.beam_marxSoul:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBeamMarxSoulP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBeamMarxSoulP2;
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
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeMysticBeamP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeMysticBeamP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.mysticBeam_ggs:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteMysticBeamGGSP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteMysticBeamGGSP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.mysticBeam_ggs_nastyFlux:
					hatPaletteIndex = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_NastyFlux;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.stone:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeStoneP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeStoneP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.stone_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteStoneKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteStoneKSSUP2;
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteStoneModernP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteStoneModernP2;
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
				}
				break;
			}
			break;
			
			/*case playerAbilities.ufo:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeBeamP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeBeamP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.ufo_modern:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBeamKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBeamKSSUP2;
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
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeMirrorP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeMirrorP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.mirror_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteMirrorKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteMirrorKSSUP2;
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteMirrorModernP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteMirrorModernP2;
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
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeNinjaP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeNinjaP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.ninja_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteNinjaKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteNinjaKSSUP2;
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteNinjaModernP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteNinjaModernP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.ninja_modern_stealthyMaroon:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_Modern_Palette_StealthyMaroon;
					break;
					
					case abilityHatPaints.ninja_modern_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_Modern_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.bomb:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeBombP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeBombP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.bomb_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBombKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBombKSSUP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.bomb_kssu_explosiveB:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_ExplosiveB;
					break;
					
					case abilityHatPaints.bomb_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case abilityHatSkins.bomb_modern:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBombModernP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBombModernP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.bomb_modern_explosiveB:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_Modern_Palette_ExplosiveB;
					break;
					
					case abilityHatPaints.bomb_modern_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_Modern_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.fire:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeFireP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeFireP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.fire_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteFireKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteFireKSSUP2;
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
				}
				break;
			}
			break;
			
			case playerAbilities.mysticFire:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeFireP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeFireP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.mysticFire_ggs:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteFireKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteFireKSSUP2;
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
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeIceP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeIceP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.ice_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteIceKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteIceKSSUP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.ice_kssu_frostedShard:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_KSSU_Palette_FrostedShard;
					break;
					
					case abilityHatPaints.ice_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case abilityHatSkins.ice_snowman:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteIceKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteIceKSSUP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.ice_snowman_chilly:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_Snowman_Palette_Chilly;
					break;
					
					case abilityHatPaints.ice_snowman_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_Snowman_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.spark:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeSparkP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeSparkP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.spark_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteSparkKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteSparkKSSUP2;
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
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeYoyoP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeYoyoP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.yoyo_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteYoyoKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteYoyoKSSUP2;
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
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeWheelP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeWheelP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.wheel_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteWheelKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteWheelKSSUP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.wheel_kssu_rushingRed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_RushingRed;
					break;
					
					case abilityHatPaints.wheel_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.artist:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeArtistP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeArtistP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.artist_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteArtistKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteArtistKSSUP2;
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteArtistModernP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteArtistModernP2;
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
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeFighterP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeFighterP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.fighter_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteFighterKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteFighterKSSUP2;
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
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeSuplexP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeSuplexP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.suplex_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteSuplexKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteSuplexKSSUP2;
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
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeWingP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeWingP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.wing_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteWingKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteWingKSSUP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.wing_kssu_rainbowFlight:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wing_KSSU_Palette_RainbowFlight;
					break;
					
					case abilityHatPaints.wing_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wing_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.jet:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeJetP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeJetP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.jet_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteJetKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteJetKSSUP2;
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
				}
				break;
			}
			break;
			
			case playerAbilities.sword:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeSwordP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeSwordP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.sword_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteSwordKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteSwordKSSUP2;
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
				}
				break;
			}
			break;
			
			case playerAbilities.parasol:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeParasolP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeParasolP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.parasol_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteParasolKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteParasolKSSUP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.parasol_kssu_lazyRed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_LazyRed;
					break;
					
					case abilityHatPaints.parasol_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.hammer:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeHammerP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeHammerP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.hammer_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteHammerKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteHammerKSSUP2;
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
				}
				break;
			}
			break;
			
			case playerAbilities.bell:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeBellP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeBellP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.bell_modern:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBellModernP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBellModernP2;
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
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeSleepP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeSleepP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.sleep_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteSleepKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteSleepKSSUP2;
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
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeScanP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeScanP2;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.scan_kssu:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteScanKSSUP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteScanKSSUP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case abilityHatPaints.scan_kssu_metallicRed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Scan_KSSU_Palette_MetallicRed;
					break;
					
					case abilityHatPaints.scan_kssu_bitcrushed:
					hatPaletteIndex = spr_Kirby_AbilityHat_Scan_KSSU_Palette_Bitcrushed;
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