///@description Draw

draw_set_font(fnt_Menu);

switch (state)
{
	#region Draw Staff Images
	case 1:
	case 2:
	draw_sprite_ext(spr_Startup_MegaStrimp,strimpAnim,45,81,image_xscale,image_yscale,image_angle,image_blend,alpha);
	draw_sprite_ext(spr_Startup_Gamble,0,282,165 + gambleY,image_xscale,image_yscale,image_angle,image_blend,alpha);
	draw_sprite_ext(spr_Startup_Subsandwich,0,321,60,image_xscale,image_yscale,image_angle,image_blend,alpha);
	draw_sprite_ext(spr_Startup_SubsandwichGlow,0,374,84,image_xscale,image_yscale,image_angle,image_blend,alpha * subAlpha);
	draw_sprite_ext(spr_Startup_Static,0,0,0,image_xscale,image_yscale,image_angle,image_blend,alpha);
	break;
	#endregion
	
	#region Draw Disclaimer Text
	case 3:
	case 4:
	draw_set_alpha(alpha);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width / 2,room_height / 2,"Kirby Gamble Galaxy Stories is an unofficial, non-profit art project made by\nthe fans of Hal Laboratories' Kirby series. We do not accept donations in\nany way, shape or form.\nThis project was just made for fun and no other greater goal.\n\n\nWe do not take any financial gains from this project, and ads are\ndisabled in every distribution place we're associated with; this includes\nthe Kirby Gamble Galaxy Stories Youtube channel.\n\n\nThe content is subject to change.\n\nAll rights of Kirby characters, lore, music and\nother assets belong to Hal Labs & Nintendo.");
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_alpha(1);
	break;
	#endregion
	
	#region Draw Staff Needed Sprite
	case 5:
	draw_sprite_ext(spr_StaffNeeded,0,0,0,1,1,image_angle,image_blend,alpha);
	break;
	#endregion
}

#region Draw Debug Message
if ((global.debug) and (global.canSave))
{
	draw_set_color(c_red);
	draw_text(4,4,"You are in Debug Mode. Press 'L' to enhance your save!");
	draw_set_color(c_white);
}
#endregion