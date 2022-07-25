///@description Draw

//Event Inherited

event_inherited();

if (!active)
{
	//Draw Star
	
	draw_sprite(sprStar,parIndex,x,y - sprite_get_height(sprite_index));
	
	//Draw Text
	
	draw_set_color(c_black);
	draw_set_font(fnt_Menu);
	draw_text(x,y - 48,drawText);
}