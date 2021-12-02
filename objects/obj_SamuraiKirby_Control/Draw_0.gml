///@description Draw

//Black Alpha Box

blackAlphaVal = lerp(blackAlphaVal,.75 * blackAlphaBox,.25);

draw_set_alpha(blackAlphaVal);
draw_set_color(c_black);
draw_rectangle(camera_get_view_x(gameView),camera_get_view_y(gameView),camera_get_view_x(gameView) + camera_get_view_width(gameView),camera_get_view_y(gameView) + camera_get_view_height(gameView),0);
draw_set_alpha(1);

//Draw Line Hud

if (blackBoxState >= 2)
{
	var lineHeight = sprite_get_height(spr_SamuraiKirby_Hud_LineNormal);
	draw_sprite(spr_SamuraiKirby_Hud_LineNormal,0,0,0);
	draw_sprite(spr_SamuraiKirby_Hud_LineNormal,0,0,room_height - lineHeight);
	if (blackBoxState >= 3)
	{
		LineCharacterPos = lerp(LineCharacterPos,0,.1);
		draw_sprite(character[p1Character][1],0,-LineCharacterPos,0);
		draw_sprite_ext(character[p2Character][1],0,room_width + LineCharacterPos,room_height - lineHeight,-1,1,image_angle,image_blend,image_alpha);
	}
}

//Draw Characters

var hasSprayPaint = false;
var outline = asset_get_index(sprite_get_name(character[p1Character][3]) + "Outline");
if (character[p1Character][0] == "Kirby") hasSprayPaint = true;
if ((hasSprayPaint) and (global.shaders)) pal_swap_set(global.sprayPaintKirbyP1,1,false);
draw_sprite_ext(character[p1Character][3],0,150,220,1,1,image_angle,image_blend,image_alpha);
if ((hasSprayPaint) and (global.shaders)) pal_swap_reset();
if (sprite_exists(outline)) draw_sprite_ext(outline,0,150,220,1,1,image_angle,image_blend,image_alpha);

hasSprayPaint = false;
if (character[p2Character][0] == "Kirby") hasSprayPaint = true;
if ((hasSprayPaint) and (global.shaders)) pal_swap_set(global.sprayPaintKirbyP1,1,false);
draw_sprite(character[p2Character][2],0,300,140);
if ((hasSprayPaint) and (global.shaders)) pal_swap_reset();