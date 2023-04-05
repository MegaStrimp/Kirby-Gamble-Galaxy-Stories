///@description Draw GUI

//Variables

var dialogueXOffset = 0;
var dialogueYOffset = 0;
if ((owner != -1) and (instance_exists(owner)) and (owner.object_index == obj_Shop_Control))
{
	dialogueXOffset = owner.textboxPos;
	dialogueYOffset = -32;
}

var dialogueX = 1 + dialogueXOffset;
var dialogueY = camera_get_view_height(gameView) - 1 - (23 * global.cutscene) + dialogueYOffset;
if (sprBackground[array] != -1)
{
	var xSpace = sprite_get_width(sprBackground[array]);
	var ySpace = sprite_get_height(sprBackground[array]);
}

//Draw Textbox

if (sprTextbox[array] != -1) draw_sprite(sprTextbox[array],0,dialogueX,dialogueY);

//Draw Backgrounds

if (sprBackground[array] != -1)
{
	vsp += .15;
	if (vsp >= ySpace) vsp -= ySpace;
	hsp += .15;
	if (hsp >= xSpace) hsp -= xSpace;
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0,room_width,room_height,false);
	
	draw_set_alpha(1);
	draw_sprite(spr_Hud_Dialogue_BackgroundMask,0,dialogueX + 10,dialogueY - 10);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	
	for (var i = 0; i < 3; i++)
	{
		for (var h = 0; h < 3; h++)
		{
			draw_sprite(sprBackground[array],0,dialogueX + 10 + hsp + (xSpace * (i - 1)),dialogueY - 10 + vsp + (ySpace * (h - 1)));
		}
	}
	
	gpu_set_alphatestenable(false);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}

//Draw Portrait

if (sprPortrait[array] != -1)
{
	if ((global.shaders) and (paletteIndex != -1)) pal_swap_set(paletteIndex,1,false);
	draw_sprite(sprPortrait[array],0,dialogueX + 10,dialogueY - 10);
	if ((global.shaders) and (paletteIndex != -1)) pal_swap_reset();
}

//Draw Text

draw_set_color(color);
draw_set_font(textFont);
scribble_font_set_default(font_get_name(textFont));
draw_set_alpha(image_alpha);
draw_set_halign(text_halign);
var drawTextX = dialogueX + 6;
var drawTextY = dialogueY - 65;
if (sprPortrait[array] != -1)
{
	drawTextX = dialogueX + 65;
}
scribble(string(text[array])).wrap(maxPixels).draw(drawTextX,drawTextY,typist);
//scr_Draw_Text_Color_Outline(drawTextX,drawTextY,text_displayed,-1,maxPixels,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left);
draw_set_alpha(1);