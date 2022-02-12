/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
image_yscale = yscale;
yscale = yscale -1;

if ((global.shaders) and (paletteIndex != -1)) pal_swap_set(paletteIndex, paletteFlash, false);
var yoffset = y - (8 * (image_yscale/2)) + 4;
for (var i = 0; i < image_yscale; i++)
{
	var sprite = 0;
	switch(i)
	{
		case 0:
		sprite = spr_Projectile_SimirrorStart;
		break;
		
		case yscale:
		sprite = spr_Projectile_SimirrorEnd;
		break;
		
		default:
		sprite = spr_Projectile_SimirrorMid;
		break;
	}
	draw_sprite(sprite, 0, x, yoffset);
	yoffset += 8;
}
if ((global.shaders) and (paletteIndex != -1)) pal_swap_reset();

yscale++;