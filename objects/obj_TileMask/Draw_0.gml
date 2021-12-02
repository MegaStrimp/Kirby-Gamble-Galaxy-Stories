///@description Draw

//Draw Mask

var xSpace = sprite_get_width(spr_Texture_FluxBig) - 50;
var ySpace = sprite_get_height(spr_Texture_FluxBig) - 50;

if (sprite_index != -1)
{
	vsp += .15;
	if (vsp >= ySpace) vsp -= ySpace;
	
	hspDummy += (.05 * walkDirX);
	if ((abs(hspDummy) >= (1))) walkDirX *= -1;
	
	hsp += hspDummy + .25;
	if (hsp >= xSpace) hsp -= xSpace;
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0,room_width,room_height,false);
	
	draw_set_alpha(1);
	draw_sprite(sprite_index,0,x,y);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	
	var iMax = 20;
	for (var i = 0; i < iMax; i++)
	{
		for (var h = 0; h < iMax; h++)
		{
			draw_sprite(spr_Texture_FluxBig,0,x + hsp + (xSpace * (i - 4)),y + vsp - (ySpace * (h - 1)));
		}
	}
	
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}