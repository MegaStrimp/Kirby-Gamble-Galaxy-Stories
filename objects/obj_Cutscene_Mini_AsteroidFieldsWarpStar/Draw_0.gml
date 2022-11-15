///@description Draw

#region Sky Fade
draw_sprite_ext(spr_SkyFade,0,0,0,room_width / 300,1,image_angle + irandom_range(-.02,.02),image_blend,skyFadeAlpha);
#endregion