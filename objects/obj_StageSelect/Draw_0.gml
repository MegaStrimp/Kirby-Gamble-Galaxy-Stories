///@description Draw

//Draw Self

draw_self();

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_StageSelect_Hud_WorldSelect,0,camera_get_view_x(gameView) + hudOffset,camera_get_view_y(gameView));

draw_sprite(spr_Menu_StageSelect_Hud_Text,0,(camera_get_view_x(gameView) + camera_get_view_width(gameView)) - hudOffset,camera_get_view_y(gameView));
draw_sprite(text,0,(camera_get_view_x(gameView) + camera_get_view_width(gameView)) - 206 - hudOffset,camera_get_view_y(gameView) + 8);

draw_set_color(c_white);
draw_set_font(global.bitmapKSSU);
draw_text(camera_get_view_x(gameView) + 6,(camera_get_view_y(gameView) + camera_get_view_height(gameView)) - 18,"Press Select For Coop");