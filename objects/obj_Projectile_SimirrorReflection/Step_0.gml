/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (!global.pause)
{
	hsp = abs(hsp) * dirX;
	
	x += hsp;
	
	if (!timer)
	{
		yscale += 1;
		yscale = clamp(yscale, 0, 8);
		timer = 2;
		if (paletteFlash == 2) paletteFlash = 1;
		else paletteFlash = 2;
	}
	else
	{
		timer--;
	}
}