/// @description Insert description here

if (global.pause)
{
	image_speed = 0;
}
else
{
	image_speed = 1;
	if (!appear)
	{
		image_alpha = floor(timer % 2);
		if (vsp > 0)
		{
			image_yscale = -1;
		}
	}
	else
	{
		image_alpha = 1.0;
		image_yscale = 1;
	}
}

// Inherit the parent event
event_inherited();