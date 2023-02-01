///@description Draw

//Draw Number

if (!global.pause) shakeFinal = irandom_range(-shake,shake);

draw_set_alpha(image_alpha);
draw_set_color(color);
draw_set_font(global.fontHitNumbers);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(x + shakeFinal,y + shakeFinal,string(floor(number)),1,1,image_angle);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_alpha(1);