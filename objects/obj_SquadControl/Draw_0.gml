///@description Draw

//Progress Bar

draw_text((camera_get_view_x(gameView) + (camera_get_view_width(gameView) / 2)) - (sprite_get_width(spr_Healthbar_Boss_Border) / 2) + 1,camera_get_view_y(gameView) + 40,string(waveState[currentWave]));
draw_sprite(spr_Healthbar_Boss_Bg,0,(camera_get_view_x(gameView) + (camera_get_view_width(gameView) / 2)) - (sprite_get_width(spr_Healthbar_Boss_Border) / 2) + 1,camera_get_view_y(gameView) + 10);
draw_sprite_part(spr_Healthbar_Boss_InnerFront,0,0,0,sprite_get_width(spr_Healthbar_Boss_InnerFront) * ((waveProgressBarMax[currentWave] - waveProgressBar[currentWave]) / waveProgressBarMax[currentWave]),sprite_get_height(spr_Healthbar_Boss_InnerFront),(camera_get_view_x(gameView) + (camera_get_view_width(gameView) / 2)) - (sprite_get_width(spr_Healthbar_Boss_InnerFront) / 2) - 1,camera_get_view_y(gameView) + 10);
draw_sprite(spr_Healthbar_Boss_Border,0,(camera_get_view_x(gameView) + (camera_get_view_width(gameView) / 2)) - (sprite_get_width(spr_Healthbar_Boss_Border) / 2),camera_get_view_y(gameView) + 8);