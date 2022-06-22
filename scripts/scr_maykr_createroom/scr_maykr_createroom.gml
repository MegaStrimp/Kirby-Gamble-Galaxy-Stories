// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Maykr_CreateRoom(argument0,argument1)
{
	roomWidth = argument0;
	roomHeight = argument1;
	
	room_set_width(global.maykrCanvas,roomWidth);
	room_set_height(global.maykrCanvas,roomHeight);
}