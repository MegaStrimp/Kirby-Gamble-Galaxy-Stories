///@description Draw

#region Back Claw
draw_sprite_ext(sprClaw,1,clawBackX,clawBackY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Back Foot
draw_sprite_ext(footBackIndex,1,footBackX,footBackY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Back Knee
draw_sprite_line(bodyX,bodyY,footBackX,footBackY,sprKnee,1,1,0);
#endregion

#region Body
draw_sprite_ext(sprBody,0,bodyX,bodyY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Eye
if (!global.pause)
{
	eyeFlash = false;
	if ((active) and ((current_time % 4) > 1)) eyeFlash = true;
}
if (eyeFlash) draw_sprite_ext(sprEye,0,bodyX + (16 * dirX),bodyY - 10,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Horns
draw_sprite_ext(sprHorns,hornIndex,bodyX - (3 * dirX),bodyY - 2,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Front Knee
draw_sprite_line(bodyX,bodyY,footFrontX,footFrontY,sprKnee,0,1,0);
#endregion

#region Front Foot
draw_sprite_ext(footFrontIndex,0,footFrontX,footFrontY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Front Claw
draw_sprite_ext(sprClaw,0,clawFrontX,clawFrontY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

/*#region Debug Text
if (global.debugOverlay)
{
	draw_set_color(c_black);
	var i = 0;
	draw_text(x - 12,y - (12 * (i + 1)),"footFrontVsp - " + string(footFrontVsp));
	i += 1;
	draw_text(x - 12,y - (12 * (i + 1)),"footBackVsp - " + string(footBackVsp));
	i += 1;
	draw_text(x - 12,y - (12 * (i + 1)),"footTurnTimer - " + string(footTurnTimer));
	i += 1;
}
#endregion