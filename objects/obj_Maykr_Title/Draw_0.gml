///@description Draw

var triWidth = sprite_get_width(spr_Maykr_Triangle);

xx += .2;
if (xx >= triWidth) xx -= triWidth;
for (var i = 0; i < 3; i++)
{
	draw_sprite(spr_Maykr_Triangle,0,480 - triWidth - (triWidth * i) + xx,0 - ((1 - startLerp) * 18));
	draw_sprite_ext(spr_Maykr_Triangle,0,0 + (triWidth * i) - xx,270 + ((1 - startLerp) * 18),1,-1,image_angle,image_blend,image_alpha);
}

draw_sprite_ext(spr_Maykr_Logo,0,92,-50 + ((startLerp) * 84),2,2,image_angle,image_blend,startLerp);

/*
draw_sprite(spr_Maykr_Title_Play,0,147 - ((1 - buttonLerp) * 305),111);
draw_sprite(spr_Maykr_Title_Build,0,333 + ((1 - buttonLerp) * 305),149);
draw_sprite(spr_Maykr_Title_Exit,0,147 - ((1 - buttonLerp) * 305),187);