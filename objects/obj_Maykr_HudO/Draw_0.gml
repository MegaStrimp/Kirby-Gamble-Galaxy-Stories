///@description Draw

//Grid

draw_sprite_tiled(spr_Maykr_Grid,0,0,0);

//Hud

draw_sprite(spr_Maykr_Hud,0,camera_get_view_x(gameView),camera_get_view_y(gameView));

//Options

if (obj_Maykr_ControlO.optionsOpen)
{
	draw_set_alpha(.75);
	draw_set_color(c_black);
	draw_rectangle(camera_get_view_x(gameView),camera_get_view_y(gameView),camera_get_view_x(gameView) + camera_get_view_width(gameView),camera_get_view_y(gameView) + camera_get_view_height(gameView),0);
	draw_set_alpha(1);
	
	draw_set_color(c_ltgray);
	draw_rectangle(camera_get_view_x(gameView) + 96,camera_get_view_y(gameView) + 24,camera_get_view_x(gameView) + 384,camera_get_view_y(gameView) + 216,false);
	draw_set_color(c_dkgray);
	draw_rectangle(camera_get_view_x(gameView) + 101,camera_get_view_y(gameView) + 49,camera_get_view_x(gameView) + 379,camera_get_view_y(gameView) + 211,false);
	
	draw_set_font(fnt_Menu);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	var title = "Stage";
	if (obj_Maykr_ControlO.optionIndex != "stage") title = obj_Maykr_ControlO.optionIndex.spawnedName;
	draw_text(camera_get_view_x(gameView) + 96 + 144,camera_get_view_y(gameView) + 30,title + " Options\n------------------");
	if (obj_Maykr_ControlO.optionIndex != "stage")
	{
		switch (obj_Maykr_ControlO.optionIndex.spawnedItemIndex)
		{
			case obj_AbilityTrophy:
			draw_text(camera_get_view_x(gameView) + 96 + 144,camera_get_view_y(gameView) + 59,"Ability\n------");
			break;
			
			case obj_WaddleDee:
			draw_text(camera_get_view_x(gameView) + 96 + 27,camera_get_view_y(gameView) + 59,"State\n------");
			draw_text(camera_get_view_x(gameView) + 96 + 78,camera_get_view_y(gameView) + 59,"Mirror\n------");
			var shaderText = "";
			if (!global.pause) shaderText = " - YOUR SYSTEM DOESN'T SUPPORT SHADERS";
			draw_text(camera_get_view_x(gameView) + 96 + 144,camera_get_view_y(gameView) + 109,"Colors" + shaderText + "\n------");
			draw_sprite(spr_Maykr_Options_NumberBar_Small,0,camera_get_view_x(gameView) + 112,camera_get_view_y(gameView) + 86);
			draw_set_halign(fa_left);
			draw_text(camera_get_view_x(gameView) + 114,camera_get_view_y(gameView) + 89,string(obj_Maykr_ControlO.optionIndex.spawnedState));
			break;
			
			default:
			draw_text(camera_get_view_x(gameView) + 96 + 27,camera_get_view_y(gameView) + 59,"State\n------");
			draw_text(camera_get_view_x(gameView) + 96 + 78,camera_get_view_y(gameView) + 59,"Mirror\n------");
			draw_sprite(spr_Maykr_Options_NumberBar_Small,0,camera_get_view_x(gameView) + 112,camera_get_view_y(gameView) + 86);
			draw_set_halign(fa_left);
			draw_text(camera_get_view_x(gameView) + 114,camera_get_view_y(gameView) + 89,string(obj_Maykr_ControlO.optionIndex.spawnedState));
			break;
		}
	}
	else
	{
		draw_text(camera_get_view_x(gameView) + 96 + 27,camera_get_view_y(gameView) + 59,"Width\n------");
		draw_text(camera_get_view_x(gameView) + 96 + 78,camera_get_view_y(gameView) + 59,"Height\n------");
		draw_sprite(spr_Maykr_Options_NumberBar_Big,0,camera_get_view_x(gameView) + 112,camera_get_view_y(gameView) + 86);
		draw_sprite(spr_Maykr_Options_NumberBar_Big,0,camera_get_view_x(gameView) + 163,camera_get_view_y(gameView) + 86);
		draw_set_halign(fa_left);
		draw_text(camera_get_view_x(gameView) + 111,camera_get_view_y(gameView) + 89,string(obj_Maykr_ControlO.width));
		draw_text(camera_get_view_x(gameView) + 162,camera_get_view_y(gameView) + 89,string(obj_Maykr_ControlO.height));
	}
}