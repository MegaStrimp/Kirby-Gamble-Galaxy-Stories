///@description Customize - Ability Hats

function scr_Customize_AbilityHats()
{
	var i = 0;
	var k = 0;
	var h = 0;
	
	#region Cutter
	if (global.beamAbilityObtained)
	{
		var i = 0;
		abilityHatTitle[i] = str("Player Abilities.Cutter.Title");
		abilityHatValue[i] = playerAbilities.cutter;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(255,145,0);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.cutter_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Slicing Gold.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.cutter_kssu_slicingGold;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_SlicingGold;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(248,176,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Blood Blade.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.cutter_kssu_bloodBlade;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_BloodBlade;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteCutterKSSUBloodBladeUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(255,58,58);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.cutter_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteCutterKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(248,176,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Mallard Green.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.cutter_kssu_mallardGreen;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_MallardGreen;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteCutterKSSUMallardGreenUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(116,199,34);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Black Swedish.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.cutter_kssu_blackSwedish;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_BlackSwedish;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteCutterKSSUBlackSwedishUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(27,49,66);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Flux Nostalgia.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.cutter_kssu_fluxNostalgia;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_FluxNostalgia;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteCutterKSSUFluxNostalgiaUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(121,49,175);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Silver and Gold.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.cutter_kssu_silverAndGold;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_SilverAndGold;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteCutterKSSUSliverAndGoldUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(255,182,21);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Beam
	if (global.beamAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Beam.Title");
		abilityHatValue[i] = playerAbilities.beam;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(255,106,7);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.beam_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Sparkling Beam.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_kssu_sparklingBeam;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_KSSU_Palette_SparklingBeam;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(176,88,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Flux Nostalgia.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_kssu_fluxNostalgia;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_KSSU_Palette_FluxNostalgia;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBeamKSSUFluxNostalgiaUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(119,57,181);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBeamKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(240,120,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Chessmaster.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_kssu_chessmaster;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_KSSU_Palette_Chessmaster;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBeamKSSUChessmasterUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(97,94,120);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Cotton Candy.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_kssu_cottonCandy;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_KSSU_Palette_CottonCandy;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBeamKSSUCottonCandyUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(255,122,237);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Frosty Mage.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_kssu_frostyMage;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_KSSU_Palette_FrostyMage;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBeamKSSUFrostyMageUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(38,186,255);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Lemon Lime.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_kssu_lemonLime;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_KSSU_Palette_LemonLime;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBeamKSSULemonLimeUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(71,170,38);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Mixing Paints.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_kssu_mixingPaints;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_KSSU_Palette_MixingPaints;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBeamKSSUMixingPaintsUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(255,248,45);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Who's Idea Was This.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_kssu_whosIdeaWasThis;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_KSSU_Palette_WhosIdeaWasThis;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBeamKSSUWhosIdeaWasThisUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(248,0,32);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
		
		#region Marx Soul
		k += 1;
		abilityHatSkinTitle[i][k] = str("Ability Hat Skins.Marx Soul.Title");
		abilityHatSkinValue[i][k] = abilityHatSkins.beam_marxSoul;
		abilityHatSkinUnlocked[i][k] = global.hatTypeBeamMarxSoulUnlocked;
		abilityHatSkinColor[i][k] = make_color_rgb(255,0,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Jester Spirit.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_marxSoul_jesterSpirit;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_MarxSoul_Palette_JesterSpirit;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(255,0,255);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Summer Fruits.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_marxSoul_summerFruits;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_MarxSoul_Palette_SummerFruits;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBeamMarxSoulSummerFruitsUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(21,255,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.beam_marxSoul_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Beam_MarxSoul_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBeamMarxSoulBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(156,0,156);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Mystic Beam
	if (global.mysticBeamAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Mystic Beam.Title");
		abilityHatValue[i] = playerAbilities.mysticBeam;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(124,86,165);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region GGS
		var k = 0;
		abilityHatSkinTitle[i][k] = "GGS";
		abilityHatSkinValue[i][k] = abilityHatSkins.mysticBeam_ggs;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(140,0,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Nasty Flux.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mysticBeam_ggs_nastyFlux;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_NastyFlux;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(152,129,206);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Mage Rose.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mysticBeam_ggs_mageRose;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_MageRose;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteMysticBeamGGSMageRoseUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(156,12,82);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Blueberry.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mysticBeam_ggs_blueberry;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_Blueberry;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteMysticBeamGGSBlueberryUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(155,173,255);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Sourlime.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mysticBeam_ggs_sourlime;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_Sourlime;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteMysticBeamGGSSourlimeUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(149,216,125);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Mono.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mysticBeam_ggs_mono;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_Mono;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteMysticBeamGGSMonoUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(186,186,186);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bubblegum.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mysticBeam_ggs_bubblegum;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_Bubblegum;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteMysticBeamGGSBubblegumUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(196,191,143);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Stone
	if (global.stoneAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Stone.Title");
		abilityHatValue[i] = playerAbilities.stone;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(115,70,75);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.stone_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Rocky Road.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.stone_kssu_rockyRoad;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Stone_KSSU_Palette_RockyRoad;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(88,48,168);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.stone_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Stone_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteStoneKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(206,117,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
		
		#region Modern
		k += 1;
		abilityHatSkinTitle[i][k] = "Modern";
		abilityHatSkinValue[i][k] = abilityHatSkins.stone_modern;
		abilityHatSkinUnlocked[i][k] = global.hatTypeBeamModernUnlocked;
		abilityHatSkinColor[i][k] = make_color_rgb(94,43,24);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Rocky Road.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.stone_modern_rockyRoad;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Stone_Modern_Palette_RockyRoad;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(94,43,24);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Molten Rock.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.stone_modern_moltenRock;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Stone_Modern_Palette_MoltenRock;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteStoneModernMoltenRockUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(190,43,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.stone_modern_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Stone_Modern_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteStoneModernBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(115,62,42);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Crying Cobblestone.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.stone_modern_cryingCobblestone;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Stone_Modern_Palette_CryingCobblestone;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteStoneModernCryingCobblestoneUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(69,71,71);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.The Bronze Jade.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.stone_modern_theBronzeJade;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Stone_Modern_Palette_TheBronzeJade;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteStoneModernTheBronzeJadeUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(9,140,88);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Mirror
	if (global.mirrorAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Mirror.Title");
		abilityHatValue[i] = playerAbilities.mirror;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(0,174,191);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.mirror_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Jester Reflection.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mirror_kssu_jesterReflection;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_JesterReflection;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(24,160,144);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Beta Block.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mirror_kssu_betaBlock;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_BetaBlock;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteMirrorKSSUBetaBlockUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(184,184,216);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mirror_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteMirrorKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(48,208,160);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
		
		#region Modern
		k += 1;
		abilityHatSkinTitle[i][k] = "Modern";
		abilityHatSkinValue[i][k] = abilityHatSkins.mirror_modern;
		abilityHatSkinUnlocked[i][k] = global.hatTypeMirrorModernUnlocked;
		abilityHatSkinColor[i][k] = make_color_rgb(94,43,24);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Jester Reflection.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mirror_modern_jesterReflection;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Mirror_Modern_Palette_JesterReflection;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(48,208,160);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Beta Block.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mirror_modern_betaBlock;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Mirror_Modern_Palette_BetaBlock;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteMirrorModernBetaBlockUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(135,135,181);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mirror_modern_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Mirror_Modern_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteMirrorModernBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(34,49,182);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Ninja
	if (global.ninjaAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Ninja.Title");
		abilityHatValue[i] = playerAbilities.ninja;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(120,25,130);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.ninja_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Stealthy Maroon.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_kssu_stealthyMaroon;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_StealthyMaroon;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(176,16,48);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Sliver-Lined Warrior.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_kssu_silverLinedWarrior;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_SilverLinedWarrior;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteNinjaKSSUSilverLinedWarriorUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(44,104,38);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteNinjaKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(136,80,216);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
		
		#region Modern
		k += 1;
		abilityHatSkinTitle[i][k] = "Modern";
		abilityHatSkinValue[i][k] = abilityHatSkins.ninja_modern;
		abilityHatSkinUnlocked[i][k] = global.hatTypeNinjaModernUnlocked;
		abilityHatSkinColor[i][k] = make_color_rgb(94,43,24);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Stealthy Maroon.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_modern_stealthyMaroon;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_Modern_Palette_StealthyMaroon;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(34,49,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_modern_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_Modern_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteNinjaModernBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(152,64,224);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Viridian Ambush.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_modern_viridianAmbush;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_Modern_Palette_ViridianAmbush;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteNinjaModernViridianAmbushUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(134,176,172);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
		
		#region Samurai
		k += 1;
		abilityHatSkinTitle[i][k] = "Samurai";
		abilityHatSkinValue[i][k] = abilityHatSkins.ninja_samurai;
		abilityHatSkinUnlocked[i][k] = global.hatTypeNinjaSamuraiUnlocked;
		abilityHatSkinColor[i][k] = make_color_rgb(88,96,128);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Menacing Black.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_samurai_menacingBlack;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_Samurai_Palette_MenacingBlack;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(88,96,128);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Classic Red.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_samurai_classicRed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_Samurai_Palette_ClassicRed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteNinjaSamuraiClassicRedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(193,61,46);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Dark Brown.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_samurai_darkBrown;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_Samurai_Palette_DarkBrown;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteNinjaSamuraiDarkBrownUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(99,59,31);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Ripper Blond.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ninja_samurai_ripperBlond;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ninja_Samurai_Palette_RipperBlond;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteNinjaSamuraiRipperBlondUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(224,209,190);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Bomb
	if (global.bombAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Bomb.Title");
		abilityHatValue[i] = playerAbilities.bomb;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(55,55,60);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.bomb_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Explosive B.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_kssu_explosiveB;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_ExplosiveB;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(0,160,200);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBombKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(32,208,240);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Blooming Poppy.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_kssu_bloomingPoppy;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_BloomingPoppy;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBombKSSUBloomingPoppyUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(248,232,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
		
		#region Modern
		k += 1;
		abilityHatSkinTitle[i][k] = "Modern";
		abilityHatSkinValue[i][k] = abilityHatSkins.bomb_modern;
		abilityHatSkinUnlocked[i][k] = global.hatTypeBombModernUnlocked;
		abilityHatSkinColor[i][k] = make_color_rgb(94,43,24);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Explosive B.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_modern_explosiveB;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_Modern_Palette_ExplosiveB;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(68,64,151);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_modern_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_Modern_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBombModernBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(97,77,168);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Outbursting Conspiracy.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_modern_outburstingConspiracy;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_Modern_Palette_OutburstingConspiracy;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBombModernOutburstingConspiracyUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(79,79,84);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Dragon's Castle.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bomb_modern_dragonsCastle;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bomb_Modern_Palette_DragonsCastle;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBombModernDragonsCastleUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(54,56,77);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Fire
	if (global.fireAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Fire.Title");
		abilityHatValue[i] = playerAbilities.fire;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(208,30,30);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.fire_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Scorching Scarlet.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_scorchingScarlet;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_ScorchingScarlet;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(232,32,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Blazing Blue.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_blazingBlue;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_BlazingBlue;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteFireKSSUBlazingBlueUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(109,197,242);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Flux Nostalgia.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_fluxNostalgia;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_FluxNostalgia;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteFireKSSUFluxNostalgiaUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(144,88,120);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Scarlet Rose.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_scarletRose;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_ScarletRose;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteFireKSSUScarletRoseUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(255,79,56);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteFireKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(226,94,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Nuclear Meltdown.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_nuclearMeltdown;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_NuclearMeltdown;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteFireKSSUNuclearMeltdownUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(162,255,22);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Midnight Inferno.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_midnightInferno;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_MidnightInferno;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteFireKSSUMidnightInfernoUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(34,34,34);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Hot Pink.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.fire_kssu_hotPink;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fire_KSSU_Palette_HotPink;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteFireKSSUHotPinkUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(239,50,119);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	/*#region Mystic Fire
	if (global.mysticFireAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Mystic Fire.Title");
		abilityHatValue[i] = playerAbilities.mysticBeam;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(0,0,0);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region GGS
		var k = 0;
		abilityHatSkinTitle[i][k] = "GGS";
		abilityHatSkinValue[i][k] = abilityHatSkins.mysticBeam_ggs;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(140,0,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Nasty Flux.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.mysticBeam_ggs_nastyFlux;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_MysticBeam_GGS_Palette_NastyFlux;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(0,0,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion*/
	
	#region Ice
	if (global.iceAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Ice.Title");
		abilityHatValue[i] = playerAbilities.ice;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(0,170,240);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.ice_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Frosted Shard.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_kssu_frostedShard;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_KSSU_Palette_FrostedShard;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(96,152,240);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteIceKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(104,200,240);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Frosty Obsidian.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_kssu_frostyObsidian;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_KSSU_Palette_FrostyObsidian;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteIceKSSUFrostyObsidianUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(126,126,163);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Flux Nostalgia.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_kssu_fluxNostalgia;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_KSSU_Palette_FluxNostalgia;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteIceKSSUFluxNostalgiaUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(165,94,209);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
		
		#region Snowman
		k += 1;
		abilityHatSkinTitle[i][k] = str("Ability Hat Skins.Snowman.Title");
		abilityHatSkinValue[i][k] = abilityHatSkins.ice_snowman;
		abilityHatSkinUnlocked[i][k] = global.hatTypeBombSnowmanUnlocked;
		abilityHatSkinColor[i][k] = make_color_rgb(123,214,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Chilly.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_snowman_chilly;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_Snowman_Palette_Chilly;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(123,214,255);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_snowman_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_Snowman_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteIceSnowmanBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(66,140,239);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Chocolate Mousse.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_snowman_chocolateMousse;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_Snowman_Palette_ChocolateMousse;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteIceSnowmanChocolateMousseUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(201,148,112);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Strawberry Cream.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.ice_snowman_strawberryCream;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Ice_Snowman_Palette_StrawberryCream;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteIceSnowmanStrawberryCreamUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(248,170,188);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Spark
	if (global.sparkAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Spark.Title");
		abilityHatValue[i] = playerAbilities.spark;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(17,141,141);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.spark_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Electro Marine.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.spark_kssu_electroMarine;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Spark_KSSU_Palette_ElectroMarine;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(184,240,224);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.spark_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Spark_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteSparkKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(128,232,208);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Yoyo
	if (global.yoyoAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Yoyo.Title");
		abilityHatValue[i] = playerAbilities.yoyo;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(0,134,219);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.yoyo_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Spinning Violet.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.yoyo_kssu_spinningViolet;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Yoyo_KSSU_Palette_SpinningViolet;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(120,104,208);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.yoyo_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Yoyo_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteYoyoKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(168,120,232);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Wheel
	if (global.wheelAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Wheel.Title");
		abilityHatValue[i] = playerAbilities.wheel;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(19,36,36);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.wheel_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Rushing Red.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.wheel_kssu_rushingRed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_RushingRed;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(176,40,48);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.wheel_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteWheelKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(248,48,48);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Muffler Blue.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.wheel_kssu_mufflerBlue;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_MufflerBlue;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteWheelKSSUMufflerBlueUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(88,176,191);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Flux Nostalgia.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.wheel_kssu_fluxNostalgia;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_FluxNostalgia;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteWheelKSSUFluxNostalgiaUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(120,77,137);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Artist
	if (global.artistAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Artist.Title");
		abilityHatValue[i] = playerAbilities.artist;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(255,0,166);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.artist_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Dapper Painter.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.artist_kssu_dapperPainter;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Artist_KSSU_Palette_DapperPainter;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(128,128,136);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.artist_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Artist_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteArtistKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(160,160,176);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Fighter
	if (global.fighterAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Fighter.Title");
		abilityHatValue[i] = playerAbilities.fighter;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(136,17,17);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.fighter_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Crimson Champion.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.fighter_kssu_crimsonChampion;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fighter_KSSU_Palette_CrimsonChampion;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(128,0,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.fighter_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Fighter_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteFighterKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(248,32,32);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Suplex
	if (global.suplexAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Suplex.Title");
		abilityHatValue[i] = playerAbilities.suplex;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(35,53,163);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.suplex_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Blue Banner.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.suplex_kssu_blueBanner;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Suplex_KSSU_Palette_BlueBanner;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(152,136,232);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.suplex_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Suplex_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteSuplexKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(0,104,248);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Wing
	if (global.wingAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Wing.Title");
		abilityHatValue[i] = playerAbilities.wing;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(0,120,220);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.wing_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Rainbow Flight.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.wing_kssu_rainbowFlight;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wing_KSSU_Palette_RainbowFlight;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(200,176,56);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.wing_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wing_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteWingKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(248,232,72);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Pekin Breeze.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.wing_kssu_pekinBreeze;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wing_KSSU_Palette_PekinBreeze;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteWingKSSUPekinBreezeUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(247,147,32);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Dyna Blade.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.wing_kssu_dynaBlade;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wing_KSSU_Palette_DynaBlade;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteWingKSSUDynaBladeUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(247,86,84);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Nocturne Friend.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.wing_kssu_nocturneFriend;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Wing_KSSU_Palette_NocturneFriend;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteWingKSSUNocturneFriendUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(208,180,237);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Jet
	if (global.jetAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Jet.Title");
		abilityHatValue[i] = playerAbilities.jet;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(0,102,184);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.jet_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Speed Machine.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.jet_kssu_speedMachine;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Jet_KSSU_Palette_SpeedMachine;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(120,136,160);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Speedy Scarlet.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.jet_kssu_speedyScarlet;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Jet_KSSU_Palette_SpeedyScarlet;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteJetKSSUSpeedyScarletUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(255,170,79);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.jet_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Jet_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteJetKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(152,176,192);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Lavender-01.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.jet_kssu_lavender01;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Jet_KSSU_Palette_Lavender01;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteJetKSSULavender01Unlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(81,83,156);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Flux Nostalgia.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.jet_kssu_fluxNostalgia;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Jet_KSSU_Palette_FluxNostalgia;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteJetKSSUFluxNostalgiaUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(117,81,137);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Sword
	if (global.swordAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Sword.Title");
		abilityHatValue[i] = playerAbilities.sword;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(7,184,86);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.sword_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Slicing Green.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.sword_kssu_slicingGreen;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sword_KSSU_Palette_SlicingGreen;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(16,184,16);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Thundering Cloud.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.sword_kssu_thunderingCloud;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sword_KSSU_Palette_ThunderingCloud;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteSwordKSSUThunderingCloudUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(255,255,158);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.sword_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sword_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteSwordKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(104,232,16);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Flux Nostalgia.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.sword_kssu_fluxNostalgia;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sword_KSSU_Palette_FluxNostalgia;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteSwordKSSUFluxNostalgiaUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(154,16,229);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Parasol
	if (global.parasolAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Parasol.Title");
		abilityHatValue[i] = playerAbilities.parasol;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(217,33,33);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.parasol_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Lazy Red.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.parasol_kssu_lazyRed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_LazyRed;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(200,24,32);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.parasol_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteParasolKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(248,40,24);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Wagasa Dee.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.parasol_kssu_wagasaDee;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_WagasaDee;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteParasolKSSUWagasaDeeUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(158,98,58);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Azure Bandanna.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.parasol_kssu_azureBandanna;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_AzureBandanna;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteParasolKSSUAzureBandannaUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(75,117,234);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Hammer
	if (global.hammerAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Hammer.Title");
		abilityHatValue[i] = playerAbilities.hammer;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(171,98,15);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.hammer_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Crushing Brown.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.hammer_kssu_crushingBrown;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_CrushingBrown;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(240,152,32);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Construction Work.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.hammer_kssu_constructionWork;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_ConstructionWork;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteHammerKSSUConstructionWorkUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(48,50,56);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.hammer_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteHammerKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(240,184,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Flux Nostalgia.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.hammer_kssu_fluxNostalgia;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_FluxNostalgia;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteHammerKSSUFluxNostalgiaUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(110,75,127);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Bell
	if (global.bellAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Bell.Title");
		abilityHatValue[i] = playerAbilities.bell;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(255,196,57);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region Modern
		var k = 0;
		abilityHatSkinTitle[i][k] = "Modern";
		abilityHatSkinValue[i][k] = abilityHatSkins.bell_modern;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(94,43,24);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Dazzling Default.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_dazzlingDefault;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_DazzlingDefault;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(249,214,96);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Presto Purple.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_prestoPurple;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_PrestoPurple;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBellModernPrestoPurpleUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(221,96,249);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Tempo Teal.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_tempoTeal;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_TempoTeal;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBellModernTempoTealUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(89,215,229);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Ringing Rose.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_ringingRose;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_RingingRose;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBellModernRingingRoseUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(244,70,102);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Candescent Copper.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_candescentCopper;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_CandescentCopper;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBellModernCandescentCopperUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(242,153,94);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Shining Silver.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_shiningSilver;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_ShiningSilver;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBellModernShiningSilverUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(155,155,155);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Polished Plant.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_polishedPlant;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_PolishedPlant;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBellModernPolishedPlantUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(96,186,63);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Illuminated Ivory.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_illuminatedIvory;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_IlluminatedIvory;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBellModernIlluminatedIvoryUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(216,219,171);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.bell_modern_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Bell_Modern_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteBellModernBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(225,176,63);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Sleep
	if (global.sleepAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Sleep.Title");
		abilityHatValue[i] = playerAbilities.sleep;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(181,92,214);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.sleep_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bubbly Green.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.sleep_kssu_bubblyGreen;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_BubblyGreen;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(8,168,152);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Noddy Peach.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.sleep_kssu_noddyPeach;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_NoddyPeach;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteSleepKSSUNoddyPeachUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(224,136,72);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Royal Purple.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.sleep_kssu_royalPurple;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_RoyalPurple;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteSleepKSSURoyalPurpleUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(186,83,255);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.sleep_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Sleep_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteSleepKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(0,216,168);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	#region Scan
	if (global.scanAbilityObtained)
	{
		i += 1;
		abilityHatTitle[i] = str("Player Abilities.Scan.Title");
		abilityHatValue[i] = playerAbilities.scan;
		abilityHatUnlocked[i] = true;
		abilityHatColor[i] = make_color_rgb(162,165,145);
		abilityHatOffset[i] = 0;
		abilityHatOffsetLerp[i] = 0;
		
		#region KSSU
		var k = 0;
		abilityHatSkinTitle[i][k] = "KSSU";
		abilityHatSkinValue[i][k] = abilityHatSkins.scan_kssu;
		abilityHatSkinUnlocked[i][k] = true;
		abilityHatSkinColor[i][k] = make_color_rgb(43,240,255);
		abilityHatSkinOffset[i][k] = 0;
		abilityHatSkinOffsetLerp[i][k] = 0;
		
		#region Paints
		var h = 0;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Metallic Red.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.scan_kssu_metallicRed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Scan_KSSU_Palette_MetallicRed;
		abilityHatPaintUnlocked[i][k][h] = true;
		abilityHatPaintColor[i][k][h] = make_color_rgb(248,0,0);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Bitcrushed.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.scan_kssu_bitcrushed;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Scan_KSSU_Palette_Bitcrushed;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteScanKSSUBitcrushedUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(96,96,96);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		h += 1;
		abilityHatPaintTitle[i][k][h] = str("Ability Hat Paints.Military Green.Title");
		abilityHatPaintValue[i][k][h] = abilityHatPaints.scan_kssu_militaryGreen;
		abilityHatPaint[i][k][h] = spr_Kirby_AbilityHat_Scan_KSSU_Palette_MilitaryGreen;
		abilityHatPaintUnlocked[i][k][h] = global.hatPaletteScanKSSUMilitaryGreenUnlocked;
		abilityHatPaintColor[i][k][h] = make_color_rgb(86,186,22);
		abilityHatPaintOffset[i][k][h] = 0;
		abilityHatPaintOffsetLerp[i][k][h] = 0;
		#endregion
		#endregion
	}
	#endregion
	
	abilityCount = i;
}