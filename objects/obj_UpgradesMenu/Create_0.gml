///@description Initialize Variables

//Other Variables

hudOffset = -250;
selection = 0;
select = false;
maxPerLine = 11;
goBack = false;

//Upgrades

var i = 0;

upgradeTitle[i] = "Motor Cutter";
upgradeDescription[i] = "Buffs Cutter Ability";
upgradeUnlocked[i] = global.cutterMotorCutterUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(255,255,102);
upgradeStar[i] = spr_AbilityStar_Cutter;
upgradeItem[i] = spr_Menu_Upgrades_GoldenFlare;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Golden Flare";
upgradeDescription[i] = "Buffs Beam Ability";
upgradeUnlocked[i] = global.beamGoldenFlareUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(255,255,102);
upgradeStar[i] = spr_AbilityStar_Beam;
upgradeItem[i] = spr_Menu_Upgrades_GoldenFlare;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Vortex In A Jar";
upgradeDescription[i] = "Buffs Mystic Beam Ability";
upgradeUnlocked[i] = global.mysticBeamVortexInAJarUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(255,255,102);
upgradeStar[i] = spr_AbilityStar_MysticBeam;
upgradeItem[i] = spr_Menu_Upgrades_VortexInAJar;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Rock Candy";
upgradeDescription[i] = "Buffs Stone Ability";
upgradeUnlocked[i] = global.stoneRockCandyUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(255,255,102);
upgradeStar[i] = spr_AbilityStar_Stone;
upgradeItem[i] = spr_Menu_Upgrades_RockCandy;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Combo Cobalt";
upgradeDescription[i] = "Buffs Stone Ability";
upgradeUnlocked[i] = global.stoneComboCobaltUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(255,255,102);
upgradeStar[i] = spr_AbilityStar_Stone;
upgradeItem[i] = spr_Menu_Upgrades_ComboCobalt;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Multi Bomb";
upgradeDescription[i] = "Buffs Bomb Ability";
upgradeUnlocked[i] = global.bombMultiBombUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(134,107,125);
upgradeStar[i] = spr_AbilityStar_Bomb;
upgradeItem[i] = spr_Menu_Upgrades_MultiBomb;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Eye Bomb";
upgradeDescription[i] = "Buffs Bomb Ability";
upgradeUnlocked[i] = global.bombEyeBombUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(134,107,125);
upgradeStar[i] = spr_AbilityStar_Bomb;
upgradeItem[i] = spr_Menu_Upgrades_EyeBomb;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Smart Bomb";
upgradeDescription[i] = "Buffs Bomb Ability";
upgradeUnlocked[i] = global.bombSmartBombUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(134,107,125);
upgradeStar[i] = spr_AbilityStar_Bomb;
upgradeItem[i] = spr_Menu_Upgrades_SmartBomb;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Magma Bomb";
upgradeDescription[i] = "Buffs Bomb Ability";
upgradeUnlocked[i] = global.bombMagmaBombUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(134,107,125);
upgradeStar[i] = spr_AbilityStar_Bomb;
upgradeItem[i] = spr_Menu_Upgrades_MagmaBomb;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Explosive Powder";
upgradeDescription[i] = "Buffs Bomb Ability";
upgradeUnlocked[i] = global.bombExplosivePowderUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(134,107,125);
upgradeStar[i] = spr_AbilityStar_Bomb;
upgradeItem[i] = spr_Menu_Upgrades_ExplosivePowder;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Magic Charcoal";
upgradeDescription[i] = "Buffs Fire Ability";
upgradeUnlocked[i] = global.fireMagicCharcoalUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(84,33,0);
upgradeStar[i] = spr_AbilityStar_Fire;
upgradeItem[i] = spr_Menu_Upgrades_MagicCharcoal;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Empty Cone";
upgradeDescription[i] = "Buffs Ice Ability";
upgradeUnlocked[i] = global.iceEmptyConeUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(84,33,0);
upgradeStar[i] = spr_AbilityStar_Ice;
upgradeItem[i] = spr_Menu_Upgrades_EmptyCone;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Bright Plugg";
upgradeDescription[i] = "Buffs Spark Ability";
upgradeUnlocked[i] = global.sparkBrightPluggUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(84,33,0);
upgradeStar[i] = spr_AbilityStar_Spark;
upgradeItem[i] = spr_Menu_Upgrades_BrightPlugg;
upgradeNumber[i] = i;
i += 1;

upgradeTitle[i] = "Egg Soil";
upgradeDescription[i] = "Buffs Water Ability";
upgradeUnlocked[i] = global.waterEggSoilUpgradeUnlocked;
upgradeUnlockMethod[i] = "???";
upgradeColor[i] = make_color_rgb(84,33,0);
upgradeStar[i] = spr_AbilityStar_Water;
upgradeItem[i] = spr_Menu_Upgrades_EggSoil;
upgradeNumber[i] = i;
i += 1;
maxButtons = i;

//Spawn Buttons

var button = instance_create_depth(480,0,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";

for (var i = 0; i < maxButtons; i++)
{
	var button = instance_create_depth(20 + (40 * (i % maxPerLine)),55 + (40 * floor(i / maxPerLine)),depth,obj_Menu_Button);
	button.state = "upgrades";
	button.index = upgradeTitle[i];
	button.sprStar = upgradeStar[i];
	button.sprItem = upgradeItem[i];
	button.number = upgradeNumber[i];
}