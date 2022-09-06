///@description Customize - Ability Hats

function scr_Customize_AbilityHats()
{
	#region Cutter
	var i = 0;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_cutter,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.cutter;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.cutter_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Slicing Gold";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.cutter_kssu_slicingGold;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_SlicingGold;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Blood Blade";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.cutter_kssu_bloodBlade;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_BloodBlade;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.cutter_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Mallard Green";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.cutter_kssu_mallardGreen;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_MallardGreen;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Beam
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_beam,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.beam;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.beam_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Sparkling Beam";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_kssu_sparklingBeam;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_KSSU_Palette_SparklingBeam;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Flux Nostalgia";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_kssu_fluxNostalgia;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_KSSU_Palette_FluxNostalgia;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	
	k += 1;
	abilityHatSkinTitle[i][k] = "Marx Soul";
	abilityHatSkinValue[i][k] = abilityHatSkins.beam_marxSoul;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Jester Spirit";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_marxSoul_jesterSpirit;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_MarxSoul_Palette_JesterSpirit;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Summer Fruits";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_marxSoul_summerFruits;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_MarxSoul_Palette_SummerFruits;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_marxSoul_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_MarxSoul_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Mystic Beam
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_mysticBeam,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.mysticBeam;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "GGS";
	abilityHatSkinValue[i][k] = abilityHatSkins.mysticBeam_ggs;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Nasty Flux";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.mysticBeam_ggs_nastyFlux;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_NastyFlux;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Mage Rose";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.mysticBeam_ggs_mageRose;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_MageRose;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Stone
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_stone,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.stone;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.stone_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Rocky Road";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.stone_kssu_rockyRoad;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Stone_KSSU_Palette_RockyRoad;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.stone_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Stone_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	
	k += 1;
	abilityHatSkinTitle[i][k] = "Modern";
	abilityHatSkinValue[i][k] = abilityHatSkins.stone_modern;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Rocky Road";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.stone_modern_rockyRoad;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Stone_Modern_Palette_RockyRoad;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Molten Rock";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.stone_modern_moltenRock;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Stone_Modern_Palette_MoltenRock;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.stone_modern_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Stone_Modern_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Mirror
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_mirror,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.mirror;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.mirror_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Jester Reflection";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.mirror_kssu_jesterReflection;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_JesterReflection;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Beta Block";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.mirror_kssu_betaBlock;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_BetaBlock;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.mirror_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	
	k += 1;
	abilityHatSkinTitle[i][k] = "Modern";
	abilityHatSkinValue[i][k] = abilityHatSkins.mirror_modern;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Jester Reflection";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.mirror_modern_jesterReflection;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Mirror_Modern_Palette_JesterReflection;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Beta Block";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.mirror_modern_betaBlock;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Mirror_Modern_Palette_BetaBlock;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.mirror_modern_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Mirror_Modern_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Ninja
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_ninja,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.ninja;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.ninja_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Stealthy Maroon";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_kssu_stealthyMaroon;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_StealthyMaroon;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Sliver-Lined Warrior";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_kssu_silverLinedWarrior;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_SilverLinedWarrior;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	
	k += 1;
	abilityHatSkinTitle[i][k] = "Modern";
	abilityHatSkinValue[i][k] = abilityHatSkins.ninja_modern;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Stealthy Maroon";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_modern_stealthyMaroon;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_Modern_Palette_StealthyMaroon;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_modern_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_Modern_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Bomb
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_bomb,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.bomb;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.bomb_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Explosive B";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_kssu_explosiveB;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_ExplosiveB;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	
	k += 1;
	abilityHatSkinTitle[i][k] = "Modern";
	abilityHatSkinValue[i][k] = abilityHatSkins.bomb_modern;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Explosive B";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_modern_explosiveB;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_Modern_Palette_ExplosiveB;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_modern_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_Modern_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Outbursting Conspiracy";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_modern_outburstingConspiracy;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_Modern_Palette_OutburstingConspiracy;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Dragon's Castle";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_modern_dragonsCastle;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_Modern_Palette_DragonsCastle;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Fire
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_fire,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.fire;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.fire_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Scorching Scarlet";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_scorchingScarlet;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_ScorchingScarlet;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Blazing Blue";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_blazingBlue;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_BlazingBlue;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Flux Nostalgia";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_fluxNostalgia;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_FluxNostalgia;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Scarlet Rose";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_scarletRose;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_ScarletRose;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Ice
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_ice,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.ice;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.ice_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Frosted Shard";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_kssu_frostedShard;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_KSSU_Palette_FrostedShard;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Frosty Obsidian";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_kssu_frostyObsidian;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_KSSU_Palette_FrostyObsidian;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	
	k += 1;
	abilityHatSkinTitle[i][k] = "Snowman";
	abilityHatSkinValue[i][k] = abilityHatSkins.ice_snowman;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Chilly";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_snowman_chilly;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_Snowman_Palette_Chilly;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_snowman_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_Snowman_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Spark
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_spark,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.spark;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.spark_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Electro Marine";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.spark_kssu_electroMarine;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Spark_KSSU_Palette_ElectroMarine;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.spark_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Spark_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Yoyo
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_yoyo,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.yoyo;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.yoyo_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Spinning Violet";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.yoyo_kssu_spinningViolet;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Yoyo_KSSU_Palette_SpinningViolet;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.yoyo_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Yoyo_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Wheel
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_wheel,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.wheel;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.wheel_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Rushing Red";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.wheel_kssu_rushingRed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_RushingRed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.wheel_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Artist
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_artist,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.artist;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.artist_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Dapper Painter";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.artist_kssu_dapperPainter;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Artist_KSSU_Palette_DapperPainter;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.artist_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Artist_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Fighter
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_fighter,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.fighter;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.fighter_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Crimson Champion";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.fighter_kssu_crimsonChampion;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fighter_KSSU_Palette_CrimsonChampion;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.fighter_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fighter_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Suplex
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_suplex,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.suplex;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.suplex_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Blue Banner";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.suplex_kssu_blueBanner;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Suplex_KSSU_Palette_BlueBanner;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.suplex_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Suplex_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Wing
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_wing,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.wing;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.wing_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Rainbow Flight";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.wing_kssu_rainbowFlight;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wing_KSSU_Palette_RainbowFlight;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.wing_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wing_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Jet
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_jet,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.jet;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.jet_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Speed Machine";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.jet_kssu_speedMachine;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Jet_KSSU_Palette_SpeedMachine;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Speedy Scarlet";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.jet_kssu_speedyScarlet;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Jet_KSSU_Palette_SpeedyScarlet;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.jet_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Jet_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Lavender-01";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.jet_kssu_lavender01;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Jet_KSSU_Palette_Lavender01;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Sword
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_sword,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.sword;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.sword_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Slicing Green";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.sword_kssu_slicingGreen;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sword_KSSU_Palette_SlicingGreen;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Thundering Cloud";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.sword_kssu_thunderingCloud;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sword_KSSU_Palette_ThunderingCloud;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.sword_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sword_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Parasol
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_parasol,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.parasol;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.parasol_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Lazy Red";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.parasol_kssu_lazyRed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_LazyRed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.parasol_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Wagasa Dee";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.parasol_kssu_wagasaDee;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_WagasaDee;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Hammer
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_hammer,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.hammer;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.hammer_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Crushing Brown";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.hammer_kssu_crushingBrown;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_CrushingBrown;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Construction Work";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.hammer_kssu_constructionWork;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_ConstructionWork;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.hammer_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Bell
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_bell,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.bell;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "Modern";
	abilityHatSkinValue[i][k] = abilityHatSkins.bell_modern;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Dazzling Default";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_dazzlingDefault;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_DazzlingDefault;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Presto Purple";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_prestoPurple;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_PrestoPurple;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Tempo Teal";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_tempoTeal;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_TempoTeal;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Ringing Rose";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_ringingRose;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_RingingRose;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Candescent Copper";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_candescentCopper;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_CandescentCopper;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Shining Silver";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_shiningSilver;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_ShiningSilver;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Polished Plant";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_polishedPlant;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_PolishedPlant;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Illuminated Ivory";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_illuminatedIvory;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_IlluminatedIvory;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Sleep
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_sleep,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.sleep;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.sleep_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Bubbly Green";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.sleep_kssu_bubblyGreen;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_BubblyGreen;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Noddy Peach";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.sleep_kssu_noddyPeach;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_NoddyPeach;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Royal Purple";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.sleep_kssu_royalPurple;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_RoyalPurple;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.sleep_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
	
	#region Scan
	i += 1;
	abilityHatTitle[i] = scr_Localization_Main(stringAttributes.playerAbilities_scan,stringAttributes.title,0,global.language);
	abilityHatValue[i] = playerAbilities.scan;
	abilityHatUnlocked[i] = true;
	abilityHatOffset[i] = 0;
	abilityHatOffsetLerp[i] = 0;
	
	var k = 0;
	abilityHatSkinTitle[i][k] = "KSSU";
	abilityHatSkinValue[i][k] = abilityHatSkins.scan_kssu;
	abilityHatSkinUnlocked[i][k] = true;
	abilityHatSkinOffset[i][k] = 0;
	abilityHatSkinOffsetLerp[i][k] = 0;
	var h = 0;
	abilityHatPaintTitle[i][k][h] = "Metallic Red";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.scan_kssu_metallicRed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Scan_KSSU_Palette_MetallicRed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Bitcrushed";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.scan_kssu_bitcrushed;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Scan_KSSU_Palette_Bitcrushed;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	h += 1;
	abilityHatPaintTitle[i][k][h] = "Military Green";
	abilityHatPaintValue[i][k][h] = abilityHatPaints.scan_kssu_militaryGreen;
	abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Scan_KSSU_Palette_MilitaryGreen;
	abilityHatPaintUnlocked[i][k][h] = true;
	abilityHatPaintOffset[i][k][h] = 0;
	abilityHatPaintOffsetLerp[i][k][h] = 0;
	#endregion
}