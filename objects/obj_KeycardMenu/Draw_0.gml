///@description Draw

//Draw Background

draw_sprite(spr_KeycardMenu_Background,0,-xx,0);

//Draw Icons

draw_sprite(spr_KeycardMenu_Icon_BattleBlitz,!global.kirbyBattleBlitzCrossoverKeycard,684 - xx,120);
draw_sprite(spr_KeycardMenu_Icon_DreamCrafter,!global.dreamCrafterCrossoverKeycard,240 - xx,192);
draw_sprite(spr_KeycardMenu_Icon_EternalParadise,!global.eternalParadiseCrossoverKeycard,270 - xx,84);
draw_sprite(spr_KeycardMenu_Icon_AbilitySprays,!global.abilitySpraysKeycard,402 - xx,168);
draw_sprite(spr_KeycardMenu_Icon_PermaHalloween,!global.permaHalloweenKeycard,528 - xx,72);

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_Gallery,0,0 + hudOffset,0);