// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_OptionsMenu_Reset()
{
	file_delete("config.ini");
	scr_LoadConfig("config.ini");
	window_set_fullscreen(global.fullscreen);
	obj_Camera.windowSet = false;
	setStrings = true;
}