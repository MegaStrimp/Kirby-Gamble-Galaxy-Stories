///@description Draw

//Draw Self

draw_self();

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_StageSelect_Hud_WorldSelect,0,camera_get_view_x(gameView) + hudOffset,camera_get_view_y(gameView));

draw_sprite(spr_Menu_StageSelect_Hud_Text,0,(camera_get_view_x(gameView) + camera_get_view_width(gameView)) - hudOffset,camera_get_view_y(gameView));
draw_sprite(text,0,(camera_get_view_x(gameView) + camera_get_view_width(gameView)) - 206 - hudOffset,camera_get_view_y(gameView) + 8);