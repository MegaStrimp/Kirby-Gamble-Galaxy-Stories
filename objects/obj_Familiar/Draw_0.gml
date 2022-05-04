///@description Draw

//Draw Self

switch (character)
{
	#region Peashooter
	case familiars.happyPea:
	if (sprite_index != -1) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
	
	var index = 0;
	if (attackState == 2) index = 1;
	draw_sprite_ext(spr_Familiar_Peashooter_Head,index,x,y - 14 + attackYOffset,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
	break;
	#endregion
	
	#region Epic Jar
	case familiars.epicJar:
	var index = spr_Familiar_EpicJar_Jar_Closed;
	if (attack)
	{
		index = spr_Familiar_EpicJar_Jar_Open;
		draw_sprite_ext(spr_Familiar_EpicJar_Jar_OpenHat,0,x,y,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
	}
	
	if (sprite_index != -1) draw_sprite_ext(sprite_index,image_index,x,y - attackYOffset,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
	if (attackState == 1) draw_sprite_ext(spr_Projectile_Bomb_Fetus,image_index,x,y - 10 - attackYOffset,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	
	draw_sprite_ext(index,0,x,y,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
	break;
	#endregion
	
	#region Default
	default:
	if (sprite_index != -1) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
	break;
	#endregion
}