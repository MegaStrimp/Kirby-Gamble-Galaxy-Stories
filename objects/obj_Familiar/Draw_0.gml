///@description Draw

//Draw Self

switch (character)
{
	//Peashooter
	
	case "Happy Pea":
	if (sprite_index != -1) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
	
	var index = 0;
	if (attackState == 2) index = 1;
	draw_sprite_ext(spr_Familiar_Peashooter_Head,index,x,y - 14 + attackYOffset,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
	break;
	
	//Epic Jar
	
	case "Epic Jar":
	if (sprite_index != -1) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
	
	var index = spr_Familiar_EpicJar_Jar_Closed;
	if (attack) index = spr_Familiar_EpicJar_Jar_Open;
	draw_sprite_ext(index,0,x,y,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
	break;
	
	//Default
	
	default:
	if (sprite_index != -1) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
	break;
}