///@description Draw

//Draw Background

draw_sprite(spr_KeycardMenu_Background,0,-xx,0);

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_Keycards,0,0 + hudOffset,0);