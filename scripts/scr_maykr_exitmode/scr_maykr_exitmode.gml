// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Maykr_ExitMode()
{
	if (font_exists(global.fontMaykrBlue)) font_delete(global.fontMaykrBlue);
	if (font_exists(global.fontMaykrRed)) font_delete(global.fontMaykrRed);
}