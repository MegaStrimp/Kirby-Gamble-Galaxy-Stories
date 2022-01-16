///@description Player - Ability Hat Palette
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_HatPalette(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var hatPaletteIndex;
	
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteCutterKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteCutterKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_SlicingGold;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_BloodBlade;
					break;
					
					case 2:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBeamKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBeamKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_SparklingBeam;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_FluxNostalgia;
					break;
					
					case 2:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case "marxSoul":
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
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Palette_JesterSpirit;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Palette_SummerFruits;
					break;
					
					case 2:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.mysticBeam:
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
				default:
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBeamKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBeamKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_FluxNostalgia;
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteStoneKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteStoneKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_KSSU_Palette_RockyRoad;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case "modern":
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
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_Modern_Palette_RockyRoad;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_Modern_Palette_MoltenRock;
					break;
					
					case 2:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBeamKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBeamKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteMirrorKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteMirrorKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_JesterReflection;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_BetaBlock;
					break;
					
					case 2:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case "modern":
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
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_Modern_Palette_JesterReflection;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_Modern_Palette_BetaBlock;
					break;
					
					case 2:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteNinjaKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteNinjaKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_StealthyMaroon;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_SilverLinedWarrior;
					break;
					
					case 2:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case "modern":
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
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_Modern_Palette_StealthyMaroon;
					break;
					
					case 1:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBombKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBombKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_ExplosiveB;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case "modern":
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
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_Modern_Palette_ExplosiveB;
					break;
					
					case 1:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteFireKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteFireKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_ScorchingScarlet;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_BlazingBlue;
					break;
					
					case 2:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_FluxNostalgia;
					break;
					
					case 3:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_ScarletRose;
					break;
					
					case 4:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteFireKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteFireKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteIceKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteIceKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_KSSU_Palette_FrostedShard;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case "snowman":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteIceKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteIceKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_Snowman_Palette_Chilly;
					break;
					
					case 1:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteSparkKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteSparkKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Spark_KSSU_Palette_ElectroMarine;
					break;
					
					case 1:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteYoyoKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteYoyoKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Palette_SpinningViolet;
					break;
					
					case 1:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteWheelKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteWheelKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_RushingRed;
					break;
					
					case 1:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteArtistKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteArtistKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Artist_KSSU_Palette_DapperPainter;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Artist_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
				
				case "modern":
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
					default:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteFighterKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteFighterKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Palette_CrimsonChampion;
					break;
					
					case 1:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteSuplexKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteSuplexKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Palette_BlueBanner;
					break;
					
					case 1:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteWingKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteWingKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wing_KSSU_Palette_RainbowFlight;
					break;
					
					case 1:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteJetKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteJetKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Jet_KSSU_Palette_SpeedMachine;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Jet_KSSU_Palette_SpeedyScarlet;
					break;
					
					case 2:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteSwordKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteSwordKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sword_KSSU_Palette_SlicingGreen;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sword_KSSU_Palette_ThunderingCloud;
					break;
					
					case 2:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteParasolKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteParasolKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_LazyRed;
					break;
					
					case 1:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteHammerKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteHammerKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_CrushingBrown;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_ConstructionWork;
					break;
					
					case 2:
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
				case "modern":
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
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_DazzlingDefault;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_PrestoPurple;
					break;
					
					case 2:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_TempoTeal;
					break;
					
					case 3:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_RingingRose;
					break;
					
					case 4:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_CandescentCopper;
					break;
					
					case 5:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_ShiningSilver;
					break;
					
					case 6:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_PolishedPlant;
					break;
					
					case 7:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bell_Modern_Palette_IlluminatedIvory;
					break;
					
					case 8:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteSleepKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteSleepKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_BubblyGreen;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_NoddyPeach;
					break;
					
					case 2:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_RoyalPurple;
					break;
					
					case 3:
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
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteScanKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteScanKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					default:
					hatPaletteIndex = spr_Kirby_AbilityHat_Scan_KSSU_Palette_MetallicRed;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Scan_KSSU_Palette_Bitcrushed;
					break;
				}
				break;
			}
			break;
			
			default:
			hatPaletteIndex = -1;
			break;
		}
		break;
		
		default:
		hatPaletteIndex = -1;
		break;
	}
	return hatPaletteIndex;
}