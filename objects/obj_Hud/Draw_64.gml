///@description Draw GUI

//Variables

var hudX = 29;
var hudY = 270 - 29;
var characterP1 = global.characterP1;
var characterP2 = global.characterP2;
var paletteP1 = global.sprayPaintP1;
var paletteP2 = global.sprayPaintP2;
var musicIntroX = 326;
var musicIntroY = 215 - (45 * global.hasCoop);
hasTreasure = global.inStage;

//if (global.isHelperP1) paletteP1 = spr_Hud_Palette_Helper;
//if (global.isHelperP2) paletteP2 = spr_Hud_Palette_Helper;

var hbackground = spr_Hud_Healthbar_Background_Kirby;

//Notification

var hasNotif = false;
if (notifState != 0) hasNotif = true;
notifOffset = lerp(notifOffset,-25 + ((notifState == 1) * 25),.15);

if (hasNotif)
{
	var arrayIndex = notifArray[notifArrayLength - 1];
	
	switch (arrayIndex)
	{
		default:
		draw_sprite_ext(spr_Hud_Spray,0,200,30 + notifOffset,1,1,image_angle,image_blend,1);
		break;
	}
}

//Music Intro

if (global.musicIntro)
{
	musicIntroAlpha = lerp(musicIntroAlpha,musicIntroActive,.2);
	
	draw_set_alpha(musicIntroAlpha);
	draw_set_font(fnt_Menu);
	
	draw_set_color(global.musicIntroColorBg);
	draw_roundrect(musicIntroX,musicIntroY,musicIntroX + 150,musicIntroY + 40,false);
	
	draw_set_color(global.musicIntroColorComposer);
	draw_text(musicIntroX + 8,musicIntroY + 4,string(global.musicIntroComposer));
	var stringWidth = string_width(global.musicIntroComposer);
	draw_sprite(spr_Hud_Note,0,musicIntroX + 12 + stringWidth,musicIntroY + 2);
	
	draw_set_color(global.musicIntroColorDark);
	draw_rectangle(musicIntroX + 7,musicIntroY + 33,musicIntroX + 145,musicIntroY + 36,false);
	draw_set_color(global.musicIntroColorLight);
	draw_text(musicIntroX + 6,musicIntroY + 14,string(global.musicIntroTitle));
	draw_rectangle(musicIntroX + 7,musicIntroY + 33,musicIntroX + (145 * (1 - (musicIntroTimer / musicIntroTimerMax))),musicIntroY + 36,false);
	
	draw_set_alpha(1);
	draw_set_color(c_white);
}

//Cutscene

cutsceneStarAngle += 2;
if (cutsceneStarAngle >= 360) cutsceneStarAngle -= 360;

cutsceneLineOffset = lerp(cutsceneLineOffset,-660 + (660 * global.cutscene),.1);

draw_set_color(c_black);
var cutsceneLineX = 530 + cutsceneLineOffset;
draw_rectangle(-80 + cutsceneLineOffset,0,cutsceneLineX,23,false);
draw_sprite_ext(spr_Hud_CutsceneStar,0,cutsceneLineX + 12,0,1,1,cutsceneStarAngle,image_blend,1);
cutsceneLineX = -80 - cutsceneLineOffset;
draw_rectangle(cutsceneLineX,270 - 23,530 - cutsceneLineOffset,270,false);
draw_sprite_ext(spr_Hud_CutsceneStar,0,cutsceneLineX - 12,270,1,1,360 - cutsceneStarAngle,image_blend,1);

//Halberd Escape

if (global.halberdEscape)
{
	//Draw Overlay
	
	draw_set_color(c_blue);
	draw_set_alpha(.15);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
	
	//Draw Timer
	
	var timerX = (480 / 2) - 32;
	var timerY = 4;
	
	draw_sprite_ext(spr_Hud_Timer,0,timerX,timerY,1,1,image_angle,image_blend,drawAlpha);
	
	halberdEscapeTimer -= 1;
	halberdEscapeTimer = clamp(halberdEscapeTimer,0,9999);
	if (halberdEscapeTimer == 0)
	{
		global.hpP1 = 0;
		global.hpP2 = 0;
	}
	
	draw_sprite_ext(spr_Hud_TimerNumbers,floor(halberdEscapeTimer / 1000),timerX + 4,timerY + 2,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_TimerNumbers,(halberdEscapeTimer - ((floor(halberdEscapeTimer / 1000) * 1000))) / 100,timerX + 17,timerY + 2,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_TimerNumbers,(halberdEscapeTimer - (floor(halberdEscapeTimer / 100) * 100)) / 10,timerX + 36,timerY + 2,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_TimerNumbers,halberdEscapeTimer - (floor(halberdEscapeTimer / 10) * 10),timerX + 49,timerY + 2,1,1,image_angle,image_blend,drawAlpha);
}

//Alpha

drawAlpha = lerp(drawAlpha,!global.cutscene,.1);
draw_set_alpha(drawAlpha);

//Notif Timer

if (notifTimer > 0)
{
	notifTimer -= 1;
}
else if (notifTimer == 0)
{
	switch (notifState)
	{
		case 0:
		notifState += 1;
		if (audio_is_playing(snd_Notif)) audio_stop_sound(snd_Notif);
		audio_play_sound(snd_Notif,0,false);
		notifTimer = 120;
		break;
		
		case 1:
		notifState += 1;
		notifTimer = 15;
		break;
		
		case 2:
		notifArrayLengthTemp += 1;
		notifState = 0;
		notifTimer = 0;
		if (notifArrayLengthTemp >= notifArrayLength)
		{
			notifArrayLength = 0;
			notifArrayLengthTemp = 0;
			notifArray = -1;
			notifTimer = -1;
		}
		break;
	}
}

//Stage Title

if (global.isHub)
{
	var stageTitleSprite = spr_Hud_StageTitle_Test;
	switch (room)
	{
		case rm_EggGarden_Hub:
		stageTitleSprite = spr_Hud_StageTitle_EggGarden;
		break;
	}
	stageTitleOffset = lerp(stageTitleOffset,0,.1);
	draw_sprite(stageTitleSprite,0,480 + stageTitleOffset,0);
}
else
{
	stageTitleOffset = 250;
}

//Treasures

if (hasTreasure)
{
	draw_sprite(spr_Hud_Collectible_Background,0,2,1);
	draw_sprite(spr_Hud_Collectible_Chest,0,1,1);
	for (var i = 0; i < array_length(global.stageCollectibleTreasures); i++)
	{
		var spr = spr_Hud_Collectible_Dot;
		if (global.stageCollectibleTreasures[i]) spr = spr_Hud_Collectible_Key;
		draw_sprite(spr_Hud_Collectible_Dot,0,42 + (i * 17),19 - i);
	}
}

//P1 Icon

var pal = paletteP1;

var iconIndex = scr_Hud_AbilityIcon(global.abilityP1,global.characterP1);
if (global.mixActive == 0) iconIndex = mixRosterIcon[mixIndex];
if ((iconIndex == spr_Hud_Icon_Kirby) and (paletteP1 == spr_Kirby_Normal_Palette_FriendlyPink)) pal = spr_Hud_Palette_Icon_Kirby;

if ((global.shaders) and (global.abilityP1 == playerAbilities.none)) pal_swap_set(pal,1 + (flashP1 * 2),false);
draw_sprite_ext(iconIndex,0,hudX,hudY,1,1,image_angle,image_blend,drawAlpha);
if ((global.shaders) and (global.abilityP1 == playerAbilities.none)) pal_swap_reset();

//draw_sprite_ext(spr_Hud_IconGlow,0,hudX,hudY,1,1,image_angle,image_blend,drawAlpha);
//draw_sprite_ext(spr_Hud_IconBorder,0,hudX,hudY,1,1,image_angle,image_blend,drawAlpha);

//P1 Health

if (!global.pause)
{
	if (hudHpP1 < global.hpP1)
	{
		if (hudHpP1Timer == -1) hudHpP1Timer = hudHpTimerMax;
	}
	else if (hudHpP1 > global.hpP1)
	{
		hudHpP1 = global.hpP1;
	}
	
	if (hudHpP1Timer > 0)
	{
		hudHpP1Timer -= 1;
	}
	else if (hudHpP1Timer == 0)
	{
		if (!audio_is_playing(snd_Select)) audio_stop_sound(snd_Select);
		audio_play_sound(snd_Select,0,false);
		hudHpP1 += 1;
		hudHpP1Timer = -1;
	}
	
	if (flashP1Timer > 0)
	{
		flashP1Timer -= 1;
	}
	else if (flashP1Timer == 0)
	{
		if (flashP1 == false)
		{
			flashP1 = true;
		}
		else
		{
			flashP1 = false;
		}
		flashP1Timer = flashTimerMax;
	}
	
	if (flashStopP1Timer > 0)
	{
		flashStopP1Timer -= 1;
	}
	else if (flashStopP1Timer == 0)
	{
		flashP1 = false;
		flashP1Timer = -1;
		flashStopP1Timer = -1;
	}
}

if (global.hpP1 <= 0) hudHpP1 = 0;

var pal = scr_Hud_Healthbar_Palette(global.abilityP1,global.characterP1,paletteP1);

if (global.shaders) pal_swap_set(pal,1,false);
for (var i = 0; i < global.hpMax; i++)
{
	var offset = 0;
	switch (i)
	{
		case 1:
		offset = 10;
		break;
		
		case 2:
		offset = 23;
		break;
		
		case 3:
		offset = 37;
		break;
		
		case 4:
		offset = 50;
		break;
	}
	
    draw_sprite_ext(spr_Hud_HealthbarBack_Kirby,i,hudX + 24 + offset,hudY + 11,1,1,image_angle,image_blend,drawAlpha);
}
if (global.shaders) pal_swap_reset();

hudHpP1 = clamp(hudHpP1,0,global.hpMax);

if (global.shaders) pal_swap_set(pal,1 + (flashP1 * 2),false);
for (var i = 0; i < hudHpP1; i++)
{
	var offset = 0;
	switch (i)
	{
		case 1:
		offset = 10;
		break;
		
		case 2:
		offset = 23;
		break;
		
		case 3:
		offset = 37;
		break;
		
		case 4:
		offset = 50;
		break;
	}
	
	draw_sprite_ext(spr_Hud_Healthbar_Kirby,i,hudX + 24 + offset,hudY + 11,1,1,image_angle,image_blend,drawAlpha);
}
if (global.shaders) pal_swap_reset();

//P1 Health Background

draw_sprite_ext(hbackground,0,hudX,hudY,1,1,image_angle,image_blend,drawAlpha);

//P1 Text

var pal = paletteP1;

var textIndex = scr_Hud_AbilityText(global.abilityP1,global.characterP1);
if (global.mixActive == 1) iconIndex = mixRosterText[mixIndex];
if ((textIndex == spr_Hud_AbilityText_Kirby) and (paletteP1 == spr_Kirby_Normal_Palette_FriendlyPink)) pal = spr_Hud_Palette_Healthbar_Kirby;

if ((global.shaders) and (global.abilityP1 == playerAbilities.none)) pal_swap_set(pal,1 + (flashP1 * 2),false);
draw_sprite_ext(textIndex,0,hudX + 26,hudY - 20,1,1,image_angle,image_blend,drawAlpha);
if ((global.shaders) and (global.abilityP1 == playerAbilities.none)) pal_swap_reset();

//P1 Big Shot

//draw_sprite_ext(spr_Hud_BigShot_Back,0,16,121,1,1,image_angle,image_blend,drawAlpha);
//draw_sprite_ext(spr_Hud_BigShot_Border,0,2,91,1,1,image_angle,image_blend,drawAlpha);

if (instance_number(obj_Player) > 1)
{
	//P2 Icon
	
	var pal = paletteP2;
	
	var iconIndex = scr_Hud_AbilityIcon(global.abilityP2,global.characterP2);
	if (global.mixActive == 1) iconIndex = mixRosterIcon[mixIndex];
	if ((iconIndex == spr_Hud_Icon_Kirby) and (paletteP1 == spr_Kirby_Normal_Palette_FriendlyPink)) pal = spr_Hud_Palette_Icon_Kirby;
	
	if ((global.shaders) and (global.abilityP2 == playerAbilities.none)) pal_swap_set(pal,1 + (flashP2 * 2),false);
	draw_sprite_ext(iconIndex,0,hudX + 480 - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - 38,hudY,1,1,image_angle,image_blend,drawAlpha);
	if ((global.shaders) and (global.abilityP2 == playerAbilities.none)) pal_swap_reset();
	
	//draw_sprite_ext(spr_Hud_IconGlow,0,hudX + 480 - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - 33,hudY,1,1,image_angle,image_blend,drawAlpha);
	//draw_sprite_ext(spr_Hud_IconBorder,0,hudX + 480 - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - 33,hudY,1,1,image_angle,image_blend,drawAlpha);
	
	//P2 Health
	
	if (!global.pause)
	{
		if (hudHpP2 < global.hpP2)
		{
			if (hudHpP2Timer == -1) hudHpP2Timer = hudHpTimerMax;
		}
		else if (hudHpP2 > global.hpP2)
		{
			hudHpP2 = global.hpP2;
		}
		
		if (hudHpP2Timer > 0)
		{
			hudHpP2Timer -= 1;
		}
		else if (hudHpP2Timer == 0)
		{
			if (!audio_is_playing(snd_Select)) audio_stop_sound(snd_Select);
			audio_play_sound(snd_Select,0,false);
			hudHpP2 += 1;
			hudHpP2Timer = -1;
		}
		
		if (flashP2Timer > 0)
		{
			flashP2Timer -= 1;
		}
		else if (flashP2Timer == 0)
		{
			if (flashP2 == false)
			{
				flashP2 = true;
			}
			else
			{
				flashP2 = false;
			}
			flashP2Timer = flashTimerMax;
		}
		
		if (flashStopP2Timer > 0)
		{
			flashStopP2Timer -= 1;
		}
		else if (flashStopP2Timer == 0)
		{
			flashP2 = false;
			flashP2Timer = -1;
			flashStopP2Timer = -1;
		}
	}
	
	if (global.hpP2 <= 0) hudHpP2 = 0;
	
	var pal = scr_Hud_Healthbar_Palette(global.abilityP2,global.characterP2,paletteP2);
	
	if (global.shaders) pal_swap_set(pal,1,false);
	for (var i = 0; i < global.hpMax; i++)
	{
		var offset = 0;
		switch (i)
		{
			case 1:
			offset = 10;
			break;
			
			case 2:
			offset = 23;
			break;
			
			case 3:
			offset = 37;
			break;
			
			case 4:
			offset = 50;
			break;
		}
		
	    draw_sprite_ext(spr_Hud_HealthbarBack_Kirby,i,hudX + 480 - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - sprite_get_width(spr_Hud_HealthbarBack_Kirby) - 40 - offset,hudY + 11,-1,1,image_angle,image_blend,drawAlpha);
	}
	if (global.shaders) pal_swap_reset();
	
	hudHpP2 = clamp(hudHpP2,0,global.hpMax);
	
	if (global.shaders) pal_swap_set(pal,1 + (flashP2 * 2),false);
	for (var i = 0; i < hudHpP2; i++)
	{
		var offset = 0;
		switch (i)
		{
			case 1:
			offset = 10;
			break;
			
			case 2:
			offset = 23;
			break;
			
			case 3:
			offset = 37;
			break;
			
			case 4:
			offset = 50;
			break;
		}
		
		draw_sprite_ext(spr_Hud_Healthbar_Kirby,i,hudX + 480 - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - sprite_get_width(spr_Hud_HealthbarBack_Kirby) - 40 - offset,hudY + 11,-1,1,image_angle,image_blend,drawAlpha);
	}
	if (global.shaders) pal_swap_reset();
	
	//P2 Health Background
	
	draw_sprite_ext(hbackground,0,hudX + 480 - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - 38,hudY,-1,1,image_angle,image_blend,image_alpha);
	
	//P2 Text
	
	var pal = paletteP2;
	
	var textIndex = scr_Hud_AbilityText(global.abilityP2,global.characterP2);
	if (global.mixActive == 1) iconIndex = mixRosterText[mixIndex];
	if ((textIndex == spr_Hud_AbilityText_Kirby) and (paletteP2 == spr_Kirby_Normal_Palette_FriendlyPink)) pal = spr_Hud_Palette_Healthbar_Kirby;
	
	if ((global.shaders) and (global.abilityP2 == playerAbilities.none)) pal_swap_set(pal,1 + (flashP2 * 2),false);
	draw_sprite_ext(textIndex,0,hudX + 480 - sprite_get_width(textIndex) - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - 64,hudY - 20,1,1,image_angle,image_blend,drawAlpha);
	if ((global.shaders) and (global.abilityP2 == playerAbilities.none)) pal_swap_reset();
	
	//P2 Big Shot
	
	//draw_sprite_ext(spr_Hud_BigShot_Back,0,480 - 18,121,-1,1,image_angle,image_blend,drawAlpha);
	//draw_sprite_ext(spr_Hud_BigShot_Border,0,480 - 2,91,-1,1,image_angle,image_blend,drawAlpha);
}

//Variables

global.playerLives = clamp(global.playerLives,0,999);
var livesBg = spr_Hud_Lives_Background1;
if (global.hasCoop) livesBg = spr_Hud_Lives_Background2;
var livesPosX = 16;
var livesPosY = 18 + (hasTreasure * 28);
starsPosX = 17;
starsPosY = 44 + (hasTreasure * 28);

	//Lives
	
	draw_sprite_ext(livesBg,0,livesPosX - 13,livesPosY - 3,1,1,image_angle,image_blend,drawAlpha);
	
	var pal = paletteP1;
	if ((characterP1 == playerCharacters.kirby) and (paletteP1 == spr_Kirby_Normal_Palette_FriendlyPink)) pal = spr_Hud_Palette_Lives_Kirby;
	
	var icon = spr_Hud_Lives_Icon_Kirby;
	var iconShadow = spr_Hud_Lives_Icon_Kirby_Shadow;
	
	switch (characterP1)
	{
		case playerCharacters.kirby:
		var icon = spr_Hud_Lives_Icon_Kirby;
		var iconShadow = spr_Hud_Lives_Icon_Kirby_Shadow;
		break;
		
		case playerCharacters.gamble:
		var icon = spr_Hud_Lives_Icon_Gamble;
		var iconShadow = spr_Hud_Lives_Icon_Gamble_Shadow;
		break;
		
		case playerCharacters.gooey:
		var icon = spr_Hud_Lives_Icon_Gooey;
		var iconShadow = spr_Hud_Lives_Icon_Gooey_Shadow;
		break;
	}
	
	if (global.shaders) pal_swap_set(paletteP1,1,false);
	draw_sprite_ext(icon,0,livesPosX,livesPosY,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(iconShadow,0,livesPosX,livesPosY,1,1,image_angle,image_blend,drawAlpha);
	if (global.shaders) pal_swap_reset();
	
	if (global.hasCoop)
	{
		var pal = paletteP2;
		if ((characterP2 == playerCharacters.kirby) and (paletteP2 == spr_Kirby_Normal_Palette_FriendlyPink)) pal = spr_Hud_Palette_Lives_Kirby;
			
		var	icon = spr_Hud_Lives_Icon_Kirby;
		var iconShadow = spr_Hud_Lives_Icon_Kirby_Shadow;
		
		switch (characterP2)
		{
			case playerCharacters.kirby:
			var icon = spr_Hud_Lives_Icon_Kirby;
			var iconShadow = spr_Hud_Lives_Icon_Kirby_Shadow;
			break;
			
			case playerCharacters.gamble:
			var icon = spr_Hud_Lives_Icon_Gamble;
			var iconShadow = spr_Hud_Lives_Icon_Gamble_Shadow;
			break;
			
			case playerCharacters.gooey:
			var icon = spr_Hud_Lives_Icon_Gooey;
			var iconShadow = spr_Hud_Lives_Icon_Gooey_Shadow;
			break;
		}
		
		if (global.shaders) pal_swap_set(paletteP2,1,false);
		draw_sprite_ext(icon,0,livesPosX + 28,livesPosY,1,1,image_angle,image_blend,drawAlpha);
		draw_sprite_ext(iconShadow,0,livesPosX + 28,livesPosY,1,1,image_angle,image_blend,drawAlpha);
		if (global.shaders) pal_swap_reset();
	}
	
	draw_sprite_ext(spr_Hud_Numbers,floor(global.playerLives / 100),livesPosX + 14 + (28 * global.hasCoop),livesPosY - 10,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_Numbers,(global.playerLives - ((floor(global.playerLives / 100) * 100))) / 10,livesPosX + 29 + (28 * global.hasCoop),livesPosY - 10,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_Numbers,global.playerLives - (floor(global.playerLives / 10) * 10),livesPosX + 44 + (28 * global.hasCoop),livesPosY - 10,1,1,image_angle,image_blend,drawAlpha);
	
	//Point Stars
	
	global.pointStars = clamp(global.pointStars,0,999);
	
	draw_sprite_ext(spr_Hud_PointStars_Background,0,starsPosX - 14,starsPosY - 5,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_PointStars_Icon,0,starsPosX,starsPosY,1,1,image_angle,image_blend,drawAlpha);
	
	draw_sprite_ext(spr_Hud_Numbers,floor(global.pointStars / 100),starsPosX + 13,starsPosY - 10,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_Numbers,(global.pointStars - ((floor(global.pointStars / 100) * 100))) / 10,starsPosX + 28,starsPosY - 10,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_Numbers,global.pointStars - (floor(global.pointStars / 10) * 10),starsPosX + 43,starsPosY - 10,1,1,image_angle,image_blend,drawAlpha);
	
	//Golden Tomato
	
	goldenTomatoPosX = 13;
	goldenTomatoPosY = 63;
	
	if (global.goldenTomato) draw_sprite_ext(spr_GoldenTomato,0,goldenTomatoPosX,goldenTomatoPosY,1,1,image_angle,image_blend,.75 * drawAlpha);
	
	//Points
	
	var pointsSep = "";
	
	if (global.points < 100000) pointsSep = "0";
	if (global.points < 10000) pointsSep = "00";
	if (global.points < 1000) pointsSep = "000";
	if (global.points < 100) pointsSep = "0000";
	if (global.points < 10) pointsSep = "00000";
	
	global.points = clamp(global.points,0,999999);
	
	//draw_text(hudX + 25,hudY + 10,pointsSep + string(global.points));

//Draw Boss Death Overlay

if (hasBossDeathOverlay)
{
	draw_set_color(bossDeathColor);
	draw_set_alpha(.2);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_color(c_white);
}

draw_set_alpha(1);

#region Mix Timer
if (mixTimer > 0)
{
	mixTimer -= 1;
}
else if (mixTimer == 0)
{
	global.pause = false;
	if (global.mixActive == 0)
	{
		global.abilityP1 = mixRosterAbility[mixIndex];
	}
	else
	{
		global.abilityP2 = mixRosterAbility[mixIndex];
	}
	global.mixActive = -1;
	with (obj_Player) blackAlphaBox = false;
	mixIndexTimer = -1;
	mixTimer = -1;
}
#endregion

#region Mix Index Timer
if (mixIndexTimer > 0)
{
	mixIndexTimer -= 1;
}
else if (mixIndexTimer == 0)
{
	if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
	audio_play_sound(snd_BossHealth,0,false);
	mixIndex += 1;
	if (mixIndex > array_length(mixRosterAbility) - 1) mixIndex -= array_length(mixRosterAbility);
	mixIndexTimer = mixIndexTimerMax;
}
#endregion

#region Music Intro Timer
if (musicIntroTimer > 0)
{
	musicIntroTimer -= 1;
}
else if (musicIntroTimer == 0)
{
	musicIntroActive = false;
	musicIntroTimer = -1;
}
#endregion

#region Boss Death Color Timer
if (bossDeathColorTimer > 0)
{
	bossDeathColorTimer -= 1;
}
else if (bossDeathColorTimer == 0)
{
	switch (bossDeathColor)
	{
		case c_white:
		bossDeathColor = c_red;
		break;
		
		case c_red:
		bossDeathColor = c_black;
		break;
		
		case c_black:
		bossDeathColor = c_white;
		break;
	}
	bossDeathColorTimer = bossDeathColorTimerMax;
}
#endregion