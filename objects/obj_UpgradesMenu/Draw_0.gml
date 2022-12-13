///@description Draw

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_Upgrades,0,0 + hudOffset,0);

//Draw Text

draw_set_color(c_black);
draw_set_alpha(.75);
draw_roundrect(65,188,415,268,false);
draw_set_alpha(1);

draw_set_color(c_white);
if (global.language == languages.english)
{
	draw_set_font(fnt_DialogueDefault);
}
else if ((global.language == languages.chinese) or (global.language == languages.japanese))
{
	draw_set_font(global.fontDialogueDefaultKanji);
}
else
{
	draw_set_font(fnt_DialogueDefaultSpecial);
}

draw_set_halign(fa_center);
var col1 = c_dkgray;
var col2 = c_dkgray
var text = upgradeUnlockMethod[selection];
if (upgradeUnlocked[selection])
{
	col1 = upgradeColor[selection];
	col2 = c_white;
	text = upgradeDescription[selection];
}
var activeText = "Disabled";
switch (upgradeTitle[selection])
{
	case "Motor Cutter":
	if (global.cutterMotorCutterUpgradeEquipped) activeText = "Active";
	break;
	
	case "Propeller Wing":
	if (global.cutterPropellerWingUpgradeEquipped) activeText = "Active";
	break;
	
	case "Golden Flare":
	if (global.beamGoldenFlareUpgradeEquipped) activeText = "Active";
	break;
	
	case "Vortex In A Jar":
	if (global.mysticBeamVortexInAJarUpgradeEquipped) activeText = "Active";
	break;
	
	case "Rock Candy":
	if (global.stoneRockCandyUpgradeEquipped) activeText = "Active";
	break;
	
	case "Combo Cobalt":
	if (global.stoneComboCobaltUpgradeEquipped) activeText = "Active";
	break;
	
	case "Multi Bomb":
	if (global.bombMultiBombUpgradeEquipped) activeText = "Active";
	break;
	
	case "Eye Bomb":
	if (global.bombEyeBombUpgradeEquipped) activeText = "Active";
	break;
	
	case "Smart Bomb":
	if (global.bombSmartBombUpgradeEquipped) activeText = "Active";
	break;
	
	case "Magma Bomb":
	if (global.bombMagmaBombUpgradeEquipped) activeText = "Active";
	break;
	
	case "Explosive Powder":
	if (global.bombExplosivePowderUpgradeEquipped) activeText = "Active";
	break;
	
	case "Magic Charcoal":
	if (global.fireMagicCharcoalUpgradeEquipped) activeText = "Active";
	break;
	
	case "Empty Cone":
	if (global.iceEmptyConeUpgradeEquipped) activeText = "Active";
	break;
	
	case "Bright Plugg":
	if (global.sparkBrightPluggUpgradeEquipped) activeText = "Active";
	break;
	
	case "Egg Soil":
	if (global.waterEggSoilUpgradeEquipped) activeText = "Active";
	break;
}
scr_Draw_Text_Color_Outline(room_width / 2,192,upgradeTitle[selection] + " - " + activeText,-1,-1,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
scr_Draw_Text_Color_Outline(room_width / 2,222,text,-1,350,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left);