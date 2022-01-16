///@description Draw

//Variables

var cameraXView = camera_get_view_x(gameView);
var cameraYView = camera_get_view_y(gameView);
var cameraWidth = camera_get_view_width(gameView);
var cameraHeight = camera_get_view_height(gameView);

sprTextbox = spr_Menu_Shop_Textbox;
if (menuIndex == 2) sprTextbox = spr_Menu_Shop_Textbox_Dialogue;

if (!active)
{
	//Transition
	
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0,room_width,room_height,false);
	
	draw_set_alpha(1);
	for (var i = 0; i < hexNum; i++)
	{
		for (var h = 0; h < 5; h++)
		{
			draw_sprite(spr_HexTransition,0,cameraXView + (69 * (i - 1)) - (69 * h),cameraYView + (40 * ((i + h) % 2)) + (80 * (h - 1)));
		}
	}
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	
	draw_sprite(spr_Menu_Shop_Background_Phil,0,cameraXView,cameraYView);
	draw_sprite(spr_Menu_Shop_Background_PhilFront,0,cameraXView,cameraYView);
	draw_sprite(spr_Menu_Shop_Background_PhilEye,0,cameraXView + 53,cameraYView + 68);
	
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}
else
{
	draw_sprite(spr_Menu_Shop_Background_Phil,0,cameraXView,cameraYView);
	draw_sprite(spr_Menu_Shop_Background_PhilFront,0,cameraXView,cameraYView);
	var eyeScale = keeperBounceOffset / 20;
	draw_sprite_ext(spr_Menu_Shop_Background_PhilEye,0,cameraXView + 53,cameraYView + 68 + keeperBounceOffset,1 + eyeScale,1 - eyeScale,image_angle,image_blend,image_alpha);
	draw_sprite_ext(spr_Menu_Shop_Background_PhilLight,0,cameraXView + 138,cameraYView + 74,1,1,image_angle,image_blend,random_range(.75,1));
}

keeperPos = lerp(keeperPos,300 + (-291 * active),.1);
//draw_sprite(spr_Menu_Shop_Keeper_Phil_Shadow,0,cameraXView + (cameraWidth / 2) - 12,cameraYView + cameraHeight - 50 + keeperPos + keeperBounceOffset + 12);
draw_sprite(spr_Menu_Shop_Keeper_Phil,0,cameraXView + (cameraWidth / 2),cameraYView + cameraHeight - 50 + keeperPos + keeperBounceOffset);
textboxPos = lerp(textboxPos,-480 + (481 * active),.1);
draw_sprite(sprTextbox,0,cameraXView + textboxPos,cameraYView + cameraHeight - 1);

if ((activeText) and ((!instance_exists(obj_Dialogue))))
{
	//Draw
	
	var textStartX = cameraXView + 7 + textboxPos;
	var textStartY = cameraYView + camera_get_view_height(gameView) - 98;
	var smallSquareX = cameraXView + 369 + textboxPos;
	
	if (global.language == 1)
	{
		draw_set_font(fnt_DialogueDefaultSpecial);
	}
	else if (global.language == 6)
	{
		draw_set_font(fnt_DialogueDefaultKanji);
	}
	else
	{
		draw_set_font(fnt_DialogueDefault);
	}
	
	switch (menuIndex)
	{
		#region Main Menu
		case 0:
		var arrayMax = array_length(chooseOptionOffset[0]);
		var lastArray = arrayMax - 1;
		
		scr_Draw_Text_Color_Outline(textStartX,textStartY,welcomeText,-1,350,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
		
		for (var i = 0; i < arrayMax; i++)
		{
			chooseOptionOffsetLerp[0][i] = lerp(chooseOptionOffsetLerp[0][i],chooseOptionOffset[0][i] * 8,.25);
			if (i != selection)
			{
				chooseOptionOffset[0][i] = 0;
			}
			else
			{
				chooseOptionOffset[0][i] = 1;
			}
			var textCol = c_white;
			if (i == selection) textCol = c_yellow;
			var text = chooseOptionString[0][i];
			scr_Draw_Text_Color_Outline(smallSquareX + chooseOptionOffsetLerp[0][i],textStartY + (i * 36),text,-1,350,textCol,textCol,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
		}
		break;
		#endregion
		
		#region Shop
		case 1:
		break;
		#endregion
		
		#region Dialogue
		case 2:
		var arrayMax = array_length(chooseOptionOffset[2]);
		var lastArray = arrayMax - 1;
		
		for (var i = 0; i < arrayMax; i++)
		{
			chooseOptionOffsetLerp[2][i] = lerp(chooseOptionOffsetLerp[2][i],chooseOptionOffset[2][i] * 8,.25);
			if (i != selection)
			{
				chooseOptionOffset[2][i] = 0;
			}
			else
			{
				chooseOptionOffset[2][i] = 1;
			}
			var textCol = c_white;
			if (i == selection) textCol = c_yellow;
			var text = chooseOptionString[2][i];
			scr_Draw_Text_Color_Outline(textStartX + (250 * floor(i / 5)) + chooseOptionOffsetLerp[2][i],textStartY + ((i % 5) * 18),text,-1,466,textCol,textCol,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
		}
		break;
		#endregion
	}
}