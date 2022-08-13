///@description End Step

//Variables

zoom = lerp(zoom,zoomTarget,.02);
zoomFinal = zoom * hitZoom;

if (!global.pause) hitZoom = lerp(hitZoom,1,.05);

//Camera View Size

camera_set_view_size(gameView,viewWidth / zoomFinal,viewHeight / zoomFinal);

//Debug Camera

if (global.debug)
{
	debugCamera = global.pause;
}

//Variables

targetClampToView = false;

#region Clamp Values
switch (room)
{
	#region Asteroid Fields 1
	case rm_AsteroidFields1:
	
	#region yLimit1
	if (cameraX < 1704)
	{
		yLimit1 = 1080;
	}
	else
	{
		yLimit1 = 0;
	}
	#endregion
	
	#region yLimit2
	if (cameraX > 2760 - viewWidth)
	{
		yLimit2 = room_height - 744;
	}
	else
	{
		yLimit2 = 0;
	}
	#endregion
	break;
	#endregion
	
	#region Asteroid Fields 5
	case rm_AsteroidFields5:
	#region xLimit1
	if (cameraX < 576)
	{
		xLimit1 = 0;
	}
	else if (cameraX < 1800)
	{
		if (cameraY < 288)
		{
			xLimit1 = 576;
		}
		else
		{
			xLimit1 = 0;
		}
	}
	else
	{
		if (cameraY >= 408 - viewHeight)
		{
			xLimit1 = 1800;
		}
		else
		{
			xLimit1 = 0;
		}
	}
	#endregion
	
	#region xLimit2
	if (cameraX <= 1104 - viewWidth)
	{
		if (cameraY >= 528 - viewHeight)
		{
			xLimit2 = room_width - 1104;
		}
		else
		{
			xLimit2 = 0;
		}
	}
	else if (cameraX <= 1392 - viewWidth)
	{
		if (cameraY > 408 - viewHeight)
		{
			xLimit2 = room_width - 1392;
		}
		else
		{
			xLimit2 = 0;
		}
	}
	else
	{
		xLimit2 = 0;
	}
	#endregion
	
	#region yLimit1
	if (cameraX < 552)
	{
		yLimit1 = 288;
	}
	else
	{
		if (cameraY < 288)
		{
			yLimit1 = 72;
		}
		else
		{
			yLimit1 = 0;
		}
	}
	#endregion
	
	#region yLimit2
	if (cameraX < 1104 - viewWidth)
	{
		yLimit2 = room_height - 960;
	}
	else if (cameraX < 1392 - viewWidth)
	{
		if (cameraY < 528 - viewHeight)
		{
			yLimit2 = room_height - 528;
		}
	}
	else if (cameraX < 1800)
	{
		if (cameraY < 408 - viewHeight)
		{
			yLimit2 = room_height - 408;
		}
	}
	else
	{
		yLimit2 = 0;
	}
	#endregion
	break;
	#endregion
	
	#region Asteroid Fields 6
	case rm_AsteroidFields6:
	#region xLimit1
	if (cameraX >= 888)
	{
		if (cameraY < 264)
		{
			xLimit1 = 888;
		}
		else
		{
			xLimit1 = 0;
		}
	}
	else
	{
		xLimit1 = 0;
	}
	#endregion
	
	#region xLimit2
	if (cameraX <= 1104 - viewWidth)
	{
		if (cameraY >= 696 - viewHeight)
		{
			xLimit2 = room_width - 1104;
		}
		else
		{
			xLimit2 = 0;
		}
	}
	else
	{
		xLimit2 = 0;
	}
	#endregion
	
	#region yLimit1
	if (cameraX < 888)
	{
		yLimit1 = 264;
	}
	else
	{
		yLimit1 = 0;
	}
	#endregion
	
	#region yLimit2
	if (cameraX > 1104 - viewWidth)
	{
		yLimit2 = room_height - 696;
	}
	else
	{
		yLimit2 = 0;
	}
	#endregion
	break;
	#endregion
}
#endregion

//Camera Position

if ((!debugCamera) and (objectFollowing == -1))
{
	if (!global.cutscene)
	{
		switch (room)
		{
			case rm_StageSelect:
			if (instance_exists(obj_StageSelect))
			{
				cameraX = lerp(cameraX,obj_StageSelect.x - ((viewWidth / zoomFinal) / 2),spd) + ((offsetX + cinematicXOffset) / zoomFinal);
				cameraY = lerp(cameraY,obj_StageSelect.y - ((viewHeight / zoomFinal) / 2),spd) + ((offsetY + cinematicYOffset) / zoomFinal);
			}
			else
			{
				state = "followingKirby";
			}
			break;
			
			case rm_Cutscene_Intro:
			cameraX = x;
			cameraY = y;
			break;
			
			case rm_Cutscene_MeetingGamble:
			cameraX = x;
			cameraY = y;
			break;
			
			default:
			if (autoscroll)
			{
				offsetX += offsetXSpd;
				offsetY += offsetYSpd;
				cameraX = cameraXStart + ((offsetX + cinematicXOffset) / zoomFinal);
				cameraY = cameraYStart + ((offsetY + cinematicYOffset) / zoomFinal);
			}
			else
			{
				if (instance_exists(obj_Player))
				{
					target = obj_Player;
				
					if (global.hpP1 != 0)
					{
						cameraX = lerp(cameraX,target.x - ((viewWidth / zoomFinal) / 2),spd) + ((offsetX + bossOffsetX + cinematicXOffset) / zoomFinal);
						cameraY = lerp(cameraY,target.y - ((viewHeight / zoomFinal) / 2),spd) + ((offsetY + bossOffsetY + cinematicYOffset) / zoomFinal);
						
						with (obj_BigMovingWall)
						{
							if (activate)
							{
								other.cameraX = lerp(other.cameraX,x + ((sprite_get_width(sprite_index) * image_xscale) / 2) - ((other.viewWidth / other.zoomFinal) / 2),other.spd) + ((other.offsetX + other.bossOffsetX + other.cinematicXOffset) / other.zoomFinal);
								other.cameraY = lerp(other.cameraY,y + yOffset - ((other.viewHeight / other.zoomFinal) / 2),other.spd) + ((other.offsetY + other.bossOffsetY + other.cinematicYOffset) / other.zoomFinal);
							}
							if (active)
							{
								other.cameraX = x + ((sprite_get_width(sprite_index) * image_xscale) / 2) - ((other.viewWidth / other.zoomFinal) / 2);
								other.cameraY = y + yOffset - ((other.viewHeight / other.zoomFinal) / 2);
							}
						}
						
						if (instance_exists(obj_WhispyWoods))
						{
							switch (obj_WhispyWoods.phase)
							{
								case 1:
								targetClampToView = true;
								cameraX = lerp(cameraX,obj_WhispyWoods.x + (obj_WhispyWoods.dirX * 180) - ((viewWidth / zoomFinal) / 2),.1) + ((offsetX + bossOffsetX + cinematicXOffset) / zoomFinal);
								cameraY = lerp(cameraY,0,.1) + ((offsetY + bossOffsetY + cinematicYOffset) / zoomFinal);
								break;
							
								case 3:
								targetClampToView = true;
								cameraX = lerp(cameraX,obj_WhispyWoods.x + ((obj_WhispyWoods.dirX) * (200 - (abs(obj_WhispyWoods.hsp) * 100))) - ((viewWidth / zoomFinal) / 2),.1) + ((offsetX + bossOffsetX + cinematicXOffset) / zoomFinal);
								cameraY = lerp(cameraY,obj_WhispyWoods.y - ((viewHeight / zoomFinal) / 2),.1) + ((offsetY + bossOffsetY + cinematicYOffset) / zoomFinal);
								break;
							}
						}
					}
				}
				else
				{
					if (global.gamemode != gamemodes.maykr)
					{
						cameraX = room_width / 2;
						cameraY = room_height / 2;
					}
				}
			
				with (obj_Enemy)
				{
				    if (isBoss)
					{
						if (bossOffsetX != "none") other.cameraX = bossOffsetX;
						if (bossOffsetY != "none") other.cameraY = bossOffsetY;
					}
				}
				break;
			}
		}
	}
}

if ((debugCamera) and (keyboard_check(vk_control)))
{
	if (keyRightHold)
	{
		cameraX += 2;
	}
	if (keyLeftHold)
	{
		cameraX -= 2;
	}
	if (keyUpHold)
	{
		cameraY -= 2;
	}
	if (keyDownHold)
	{
		cameraY += 2;
	}
}

if ((global.gamemode == gamemodes.maykr) and (instance_exists(obj_Maykr_Control)) and (!obj_Maykr_Control.active))
{
	if (keyboard_check(vk_control))
	{
		if (mouse_wheel_up())
		{
			zoom += .05;
			zoomTarget += .05;
		}
		
		if (mouse_wheel_down())
		{
			zoom -= .05;
			zoomTarget -= .05;
		}
	}
	
	if ((mouse_check_button_pressed(mb_middle)) or ((obj_Maykr_Control.dragMode) and (mouse_check_button_pressed(mb_left))))
	{
		dragX = mouse_x;
		dragY = mouse_y;
	}
	
	if ((mouse_check_button(mb_middle)) or ((obj_Maykr_Control.dragMode) and (mouse_check_button(mb_left))))
	{
		cameraX = dragX - (mouse_x - camera_get_view_x(gameView));
		cameraY = dragY - (mouse_y - camera_get_view_y(gameView));
	}
	else
	{
		if (keyRightHold)
		{
			cameraX += 2;
		}
		if (keyLeftHold)
		{
			cameraX -= 2;
		}
		if (keyUpHold)
		{
			cameraY -= 2;
		}
		if (keyDownHold)
		{
			cameraY += 2;
		}
	}
}

//Follow Object

if ((objectFollowing != -1) and (!instance_exists(objectFollowing))) objectFollowing = -1;
if (objectFollowing != -1)
{
	cameraX = lerp(cameraX,objectFollowing.x - ((viewWidth / zoomFinal) / 2),spd);
	cameraY = lerp(cameraY,objectFollowing.y - ((viewHeight / zoomFinal) / 2),spd);
}

//Clamp

/*xLimit1Final = lerp(xLimit1Final,xLimit1,.2);
xLimit2Final = lerp(xLimit2Final,xLimit2,.2);
yLimit1Final = lerp(yLimit1Final,yLimit1,.2);
yLimit2Final = lerp(yLimit2Final,yLimit2,.2);*/
xLimit1Final = xLimit1;
xLimit2Final = xLimit2;
yLimit1Final = yLimit1;
yLimit2Final = yLimit2;

cameraX = clamp(cameraX,0 + xLimit1Final,room_width - xLimit2Final - (viewWidth / zoomFinal));
cameraY = clamp(cameraY,0 + yLimit1Final,room_height - yLimit2Final - (viewHeight / zoomFinal));

//Shake and Angle

if (!global.pause)
{
	sShakeX = irandom_range(-shakeX + -global.halberdEscape,shakeX + global.halberdEscape);
	sShakeY = irandom_range(-shakeY + -global.halberdEscape,shakeY + global.halberdEscape);
	
	if (global.halberdEscape)
	{
		if (halberdEscapeAngle < 5) halberdEscapeAngle += .1;
	}
	else
	{
		halberdEscapeAngle = 0;
	}
}

camera_set_view_pos(gameView,cameraX + sShakeX,cameraY + sShakeY);
camera_set_view_angle(gameView,halberdEscapeAngle);

if (shakeX > 0)
{
	shakeX -= (sign(shakeX)) / 10;
}
else
{
	shakeX = 0;
}

if (shakeY > 0)
{
	shakeY -= (sign(shakeY)) / 10;
}
else
{
	shakeY = 0;
}

//Objects Following Camera

with (obj_Menu_Button)
{
	if (followCamera)
	{
		x = camera_get_view_x(gameView) + xstart;
		y = camera_get_view_y(gameView) + ystart;
	}
}

//Background Control

var _xpos = camera_get_view_x(gameView) / (room_width - camera_get_view_width(gameView));
var _ypos = camera_get_view_y(gameView) / (room_height - camera_get_view_height(gameView));
_xpos = clamp(_xpos,0,room_width)

if (layer_exists("Background_Parallax1"))
{
	var backgroundSprite = layer_background_get_sprite(layer_background_get_id("Background_Parallax1"));
	var backgroundXScale = layer_background_get_xscale(layer_background_get_id("Background_Parallax1"));
	var backgroundYScale = layer_background_get_yscale(layer_background_get_id("Background_Parallax1"));
	
	if ((sprite_get_width(backgroundSprite) * backgroundXScale) <= room_width) layer_x("Background_Parallax1",lerp(0,room_width - (sprite_get_width(backgroundSprite) * backgroundXScale),_xpos));
	if ((sprite_get_height(backgroundSprite) * backgroundYScale) <= room_height) layer_y("Background_Parallax1",lerp(0,room_height - (sprite_get_height(backgroundSprite) * backgroundYScale),_ypos));
}

if (layer_exists("Background_Parallax2"))
{
	var backgroundSprite = layer_background_get_sprite(layer_background_get_id("Background_Parallax2"));
	var backgroundXScale = layer_background_get_xscale(layer_background_get_id("Background_Parallax2"));
	var backgroundYScale = layer_background_get_yscale(layer_background_get_id("Background_Parallax2"));
	
	if ((sprite_get_width(backgroundSprite) * backgroundXScale) <= room_width) layer_x("Background_Parallax2",lerp(0,room_width - (sprite_get_width(backgroundSprite) * backgroundXScale),_xpos));
	if ((sprite_get_height(backgroundSprite) * backgroundYScale) <= room_height) layer_y("Background_Parallax2",lerp(0,room_height - (sprite_get_height(backgroundSprite) * backgroundYScale),_ypos));
}

if (layer_exists("Background_VParallax1"))
{
	var backgroundSprite = layer_background_get_sprite(layer_background_get_id("Background_VParallax1"));
	var backgroundYScale = layer_background_get_yscale(layer_background_get_id("Background_VParallax1"));
	
	if (sprite_get_height(backgroundSprite) <= room_height) layer_y("Background_VParallax1",lerp(0,room_height - sprite_get_height(backgroundSprite),_ypos));
}

if (layer_exists("MainMenuDiamond"))
{
	if (!global.pause)
	{
		layer_hspeed("MainMenuDiamond",.4);
		layer_vspeed("MainMenuDiamond",.2);
	}
	else
	{
		layer_hspeed("MainMenuDiamond",0);
		layer_vspeed("MainMenuDiamond",0);
	}
}

if (layer_exists("OptionsBackground"))
{
	if (!global.pause)
	{
		layer_hspeed("OptionsBackground",.4);
		layer_vspeed("OptionsBackground",.2);
	}
	else
	{
		layer_hspeed("OptionsBackground",0);
		layer_vspeed("OptionsBackground",0);
	}
}

if (layer_exists("BattleshipHalberd_Clouds_Front"))
{
	if (!global.pause)
	{
		layer_hspeed("BattleshipHalberd_Clouds_Front",-0.6);
	}
	else
	{
		layer_hspeed("BattleshipHalberd_Clouds_Front",0);
	}
}

if (layer_exists("BattleshipHalberd_Clouds_Mid"))
{
	if (!global.pause)
	{
		layer_hspeed("BattleshipHalberd_Clouds_Mid",-0.45);
	}
	else
	{
		layer_hspeed("BattleshipHalberd_Clouds_Mid",0);
	}
}

if (layer_exists("BattleshipHalberd_Clouds_Back"))
{
	if (!global.pause)
	{
		layer_hspeed("BattleshipHalberd_Clouds_Back",-0.3);
	}
	else
	{
		layer_hspeed("BattleshipHalberd_Clouds_Back",0);
	}
}

if (layer_exists("AsteroidFields_Cube_Front"))
{
	if (!global.pause)
	{
		layer_hspeed("AsteroidFields_Cube_Front",.3);
	}
	else
	{
		layer_hspeed("AsteroidFields_Cube_Front",0);
	}
}

if (layer_exists("AsteroidFields_Cube_Mid"))
{
	if (!global.pause)
	{
		layer_hspeed("AsteroidFields_Cube_Mid",-.2);
	}
	else
	{
		layer_hspeed("AsteroidFields_Cube_Mid",0);
	}
}

if (layer_exists("AsteroidFields_Cube_Back"))
{
	if (!global.pause)
	{
		layer_hspeed("AsteroidFields_Cube_Back",.1);
	}
	else
	{
		layer_hspeed("AsteroidFields_Cube_Back",0);
	}
}

if (layer_exists("Skylands_Sky_Clouds"))
{
	if (!global.pause)
	{
		layer_vspeed("Skylands_Sky_Clouds",.5);
	}
	else
	{
		layer_vspeed("Skylands_Sky_Clouds",0);
	}
}

if (layer_exists("Skylands_Sky_Islands"))
{
	if (!global.pause)
	{
		layer_vspeed("Skylands_Sky_Islands",.25);
	}
	else
	{
		layer_vspeed("Skylands_Sky_Islands",0);
	}
}

if (layer_exists("AbilityChallenge_Background"))
{
	if (!global.pause)
	{
		layer_hspeed("AbilityChallenge_Background",.25);
		layer_vspeed("AbilityChallenge_Background",.25);
	}
	else
	{
		layer_hspeed("AbilityChallenge_Background",0);
		layer_vspeed("AbilityChallenge_Background",0);
	}
}