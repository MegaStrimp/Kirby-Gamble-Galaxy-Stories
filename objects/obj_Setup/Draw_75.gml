///@description Draw GUI End

//Virtual Keys

if (global.buildType == buildTypes.android)
{
	var dpadButtonSpr = spr_VirtualKey_DPadButton;
	var dpadLetterSpr = spr_VirtualKey_DPadLetter;
	if ((keyboard_check(global.finalKeyLeft[0])) or (keyboard_check(global.finalKeyRight[0])) or (keyboard_check(global.finalKeyUp[0])) or (keyboard_check(global.finalKeyDown[0])))
	{
		dpadButtonSpr = spr_VirtualKey_DPadButtonPressed;
		dpadLetterSpr = spr_VirtualKey_DPadLetterPressed;
	}
	draw_sprite_ext(dpadButtonSpr,0,16,162,.2,.2,image_angle,image_blend,.4);
	draw_sprite_ext(dpadLetterSpr,0,16,162,.2,.2,image_angle,image_blend,.4);
	
	var smallButtonSpr = spr_VirtualKey_SmallButton;
	var selectLetterSpr = spr_VirtualKey_SelectLetter;
	if (keyboard_check(global.finalKeySelect[0]))
	{
		smallButtonSpr = spr_VirtualKey_SmallButtonPressed;
		selectLetterSpr = spr_VirtualKey_SelectLetterPressed;
	}
	draw_sprite_ext(smallButtonSpr,0,186,236,.25,.25,image_angle,image_blend,.4);
	draw_sprite_ext(selectLetterSpr,0,186,236,.25,.25,image_angle,image_blend,.4);
	
	var smallButtonSpr = spr_VirtualKey_SmallButton;
	var startLetterSpr = spr_VirtualKey_StartLetter;
	if (keyboard_check(global.finalKeyStart[0]))
	{
		smallButtonSpr = spr_VirtualKey_SmallButtonPressed;
		startLetterSpr = spr_VirtualKey_StartLetterPressed;
	}
	draw_sprite_ext(smallButtonSpr,0,230,236,.25,.25,image_angle,image_blend,.4);
	draw_sprite_ext(startLetterSpr,0,230,236,.25,.25,image_angle,image_blend,.4);
	
	var bigButtonSpr = spr_VirtualKey_BigButton;
	var aLetterSpr = spr_VirtualKey_ALetter;
	if (keyboard_check(global.finalKeyJump[0]))
	{
		bigButtonSpr = spr_VirtualKey_BigButtonPressed;
		aLetterSpr = spr_VirtualKey_ALetterPressed;
	}
	draw_sprite_ext(bigButtonSpr,0,326,195,.25,.25,image_angle,image_blend,.4);
	draw_sprite_ext(aLetterSpr,0,326,195,.25,.25,image_angle,image_blend,.4);
	
	var bigButtonSpr = spr_VirtualKey_BigButton;
	var bLetterSpr = spr_VirtualKey_BLetter;
	if (keyboard_check(global.finalKeyAttack[0]))
	{
		bigButtonSpr = spr_VirtualKey_BigButtonPressed;
		bLetterSpr = spr_VirtualKey_BLetterPressed;
	}
	draw_sprite_ext(bigButtonSpr,0,399,195,.25,.25,image_angle,image_blend,.4);
	draw_sprite_ext(bLetterSpr,0,399,195,.25,.25,image_angle,image_blend,.4);
}

#region Debug Room Names
if (global.debug)
{
	var roomName = string(room_get_name(room));
	switch (room)
	{
		default:
		break;
	}
	draw_set_font(fnt_Small);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_color(c_dkgray);
	draw_text(240,270,roomName);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
}
#endregion