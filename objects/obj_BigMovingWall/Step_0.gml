/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (!active)
{
	with (obj_Player)
	{
		if (place_meeting(x,y + 1,other))
		{
			obj_Camera.zoomTarget = .5;
			other.active = true;
		}
	}
}