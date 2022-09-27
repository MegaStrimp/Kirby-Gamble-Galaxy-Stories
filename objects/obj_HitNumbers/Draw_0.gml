///@description Draw

//Draw Number

draw_set_alpha(image_alpha);
draw_set_color(c_white);
draw_set_font(global.fontNumbersGray);
draw_set_halign(fa_center);
draw_text(x + (irandom_range(-shake,shake)),y + (irandom_range(-shake,shake)),string(number));
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_alpha(1);