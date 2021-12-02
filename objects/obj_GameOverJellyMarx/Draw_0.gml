///@description Draw

//Draw Self

draw_self();

//Draw Text

if (state >= 2) draw_sprite_ext(spr_JellyMarxSpace,0,room_width / 2,room_height / 2,spaceScale,spaceScale,image_angle,image_blend,spaceAlpha);
draw_set_font(fnt_ChapterIntro);
draw_set_color(c_black);
draw_text(textX + 4 - 120,10 + 4,"You just got Jelly Marxd");
draw_set_color(c_white);
draw_text(textX - 120,10,"You just got Jelly Marxd");