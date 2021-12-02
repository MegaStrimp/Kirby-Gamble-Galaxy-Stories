///@description Notif
///@param {real} notifIndex Which index to check.

function scr_Notif(argument0)
{
	var notifIndex = argument0;
	
	if (instance_exists(obj_Hud))
	{
		obj_Hud.notifArray[obj_Hud.notifArrayLength] = notifIndex;
		obj_Hud.notifArrayLength += 1;
		if (obj_Hud.notifTimer == -1) obj_Hud.notifTimer = 0;
	}
}