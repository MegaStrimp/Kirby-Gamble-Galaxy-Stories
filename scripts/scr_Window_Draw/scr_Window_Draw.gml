///@description Window - Draw
///@param {real} x1 Left position of the window
///@param {real} y1 Top position of the window
///@param {real} x2 Right position of the window
///@param {real} y2 Bottom position of the window
///@param {real} borderSprite Sprite of the window border
///@param {real} textureSprite Sprite of the window texture

function scr_Window_Draw(argument0,argument1,argument2,argument3,argument4,argument5)
{
	var x1 = argument0;
	var y1 = argument1;
	var x2 = argument2;
	var y2 = argument3;
	var borderSprite = argument4;
	var textureSprite = argument5;
	
	var spriteWidth = sprite_get_width(borderSprite);
	var spriteHeight = sprite_get_height(borderSprite);
	
	windowWidth = lerp(windowWidth,x2,.2);
	windowHeight = lerp(windowHeight,y2,.2);
	if ((!windowActive) and (windowWidth > (x2 * .85))) windowActive = true;
	windowContentAlpha = lerp(windowContentAlpha,windowActive,.2);
	
	var windowXScale = ((windowWidth - x1) / spriteWidth);
	var windowYScale = ((windowHeight - y1) / spriteHeight);
	
	textureY += .15;
	if (textureY >= 48) textureY -= 48;
	textureX += .15;
	if (textureX >= 48) textureX -= 48;
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0,room_width,room_height,false);
	
	draw_set_alpha(1);
	draw_sprite_ext(borderSprite,1,x1,y1,windowXScale,windowYScale,image_angle,image_blend,image_alpha);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	
	for (var i = 0; i < floor((x2 - x1) / 48) + 2; i++)
	{
		for (var h = 0; h < floor((y2 - y1) / 48) + 2; h++)
		{
			draw_sprite(textureSprite,0,x1 + textureX + (48 * (i - 1)),y1 + textureY + (48 * (h - 1)));
		}
	}
	
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	draw_sprite_ext(borderSprite,0,x1,y1,windowXScale,windowYScale,image_angle,image_blend,image_alpha);
	
	draw_set_color(c_white);
	draw_set_alpha(1);
}