///@description Draw

//Draw Self

draw_self();

//States

switch (state)
{
	case "walk":
	var buttonIndex = spr_TutorialSign_Symbol_Dpad;
	if (buttonAnim == 1) buttonIndex = spr_TutorialSign_Symbol_DpadWalk;
	draw_sprite_ext(spr_TutorialSign_Symbol_KirbyWalk,0,x - 13,y - 27,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	draw_sprite_ext(buttonIndex,0,x + 17,y - 29,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	break;
	
	case "run":
	var buttonIndex = spr_TutorialSign_Symbol_Dpad;
	if (buttonAnim == 1) buttonIndex = spr_TutorialSign_Symbol_DpadWalk;
	draw_sprite_ext(spr_TutorialSign_Symbol_KirbyRun,0,x - 13,y - 27,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	draw_sprite_ext(buttonIndex,0,x + 17,y - 29,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	break;
	
	case "jump":
	var buttonIndex = spr_TutorialSign_Symbol_AButton;
	if (buttonAnim == 1) buttonIndex = spr_TutorialSign_Symbol_AButtonPressed;
	draw_sprite_ext(spr_TutorialSign_Symbol_KirbyJump,0,x - 13,y - 27,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	draw_sprite_ext(buttonIndex,0,x + 17,y - 29,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	break;
	
	case "duck":
	var buttonIndex = spr_TutorialSign_Symbol_Dpad;
	if (buttonAnim == 1) buttonIndex = spr_TutorialSign_Symbol_DpadDown;
	draw_sprite_ext(spr_TutorialSign_Symbol_KirbyDuck,0,x - 13,y - 27,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	draw_sprite_ext(buttonIndex,0,x + 17,y - 29,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	break;
	
	case "float":
	var buttonIndex = spr_TutorialSign_Symbol_AButton;
	if (buttonAnim == 1) buttonIndex = spr_TutorialSign_Symbol_AButtonPressed;
	draw_sprite_ext(spr_TutorialSign_Symbol_KirbyFloat,0,x - 13,y - 27,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	draw_sprite_ext(buttonIndex,0,x + 17,y - 29,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	break;
	
	case "inhale":
	var buttonIndex = spr_TutorialSign_Symbol_BButton;
	if (buttonAnim == 1) buttonIndex = spr_TutorialSign_Symbol_BButtonPressed;
	var kirbyIndex = spr_TutorialSign_Symbol_KirbyInhale;
	switch (substate)
	{
		case 0:
		kirbyIndex = spr_TutorialSign_Symbol_KirbyInhale;
		break;
		
		case 1:
		kirbyIndex = spr_TutorialSign_Symbol_KirbyCarry;
		break;
	}
	draw_sprite_ext(kirbyIndex,0,x - 13,y - 27,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	draw_sprite_ext(buttonIndex,0,x + 17,y - 29,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	break;
	
	case "swallow":
	var buttonIndex = spr_TutorialSign_Symbol_BButton;
	var kirbyIndex = spr_TutorialSign_Symbol_KirbyInhale;
	switch (substate)
	{
		case 0:
		buttonIndex = spr_TutorialSign_Symbol_BButton;
		if (buttonAnim == 1) buttonIndex = spr_TutorialSign_Symbol_BButtonPressed;
		kirbyIndex = spr_TutorialSign_Symbol_KirbyInhale;
		break;
		
		case 1:
		buttonIndex = spr_TutorialSign_Symbol_Dpad;
		if (buttonAnim == 1) buttonIndex = spr_TutorialSign_Symbol_DpadDown;
		kirbyIndex = spr_TutorialSign_Symbol_KirbyCarry;
		break;
	}
	draw_sprite_ext(kirbyIndex,0,x - 13,y - 27,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	draw_sprite_ext(buttonIndex,0,x + 17,y - 29,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	break;
}

var completionSign = spr_TutorialSign_Symbol_Cross;
if (completed) completionSign = spr_TutorialSign_Symbol_Check;

draw_sprite_ext(completionSign,0,x + 26,y - 51,image_xscale,image_yscale,image_angle,image_blend,image_alpha);