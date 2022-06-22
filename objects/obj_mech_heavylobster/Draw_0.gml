///@description Draw

#region Back Claw
draw_sprite_ext(sprClaw,1,clawBackX,clawBackY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Back Foot
draw_sprite_ext(footBackIndex,1,footBackX,footBackY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Back Knee
draw_sprite_line(x,y,footBackX,footBackY,sprKnee,1,1,0);
#endregion

#region Body
draw_sprite_ext(sprBody,0,bodyX,bodyY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Horns
draw_sprite_ext(sprHorns,hornIndex,x - (3 * dirX),y - 2,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Front Knee
draw_sprite_line(x,y,footFrontX,footFrontY,sprKnee,0,1,0);
#endregion

#region Front Foot
draw_sprite_ext(footFrontIndex,0,footFrontX,footFrontY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Front Claw
draw_sprite_ext(sprClaw,0,clawFrontX,clawFrontY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion