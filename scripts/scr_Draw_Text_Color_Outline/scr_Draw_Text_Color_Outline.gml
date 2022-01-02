///@description Draw Text Color Outline
///@param {real} x
///@param {real} y
///@param {real} string
///@param {real} sep
///@param {real} w
///@param {real} textColor1
///@param {real} textColor2
///@param {real} textAlpha
///@param {real} outlineColor1
///@param {real} outlineColor2
///@param {real} outlineAlpha
///@param {real} outlineThickness
///@param {real} outlineQuality
///@param {real} xscale
///@param {real} yscale
///@param {real} angle

function scr_Draw_Text_Color_Outline(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9,argument10,argument11,argument12,argument13,argument14,argument15)
{
	var i;
	for (i = 0; i < 360; i += 360 / argument12){
	    draw_text_ext_transformed_color(argument0 + lengthdir_x(argument11, i), argument1 + lengthdir_y(argument11, i), string(argument2), argument3, argument4, argument13, argument14, argument15, argument8, argument8, argument9, argument9, argument10);
	}
	draw_text_ext_transformed_color(argument0, argument1, string(argument2), argument3, argument4, argument13, argument14, argument15, argument5, argument5, argument6, argument6, argument7);
}