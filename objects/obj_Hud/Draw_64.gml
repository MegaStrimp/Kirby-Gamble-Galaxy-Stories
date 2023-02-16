///@description Draw GUI

#region Variables
var musicIntroX = 326;
var musicIntroY = 215 - (48 * (global.hasCoop >= 2));

hasTreasure = global.inStage;
#endregion

#region Notification
var hasNotif = (notifState != 0);

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
#endregion

#region Music Intro
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
	draw_text_ext(musicIntroX + 6,musicIntroY + 14,string(global.musicIntroTitle),9,140);
	draw_rectangle(musicIntroX + 7,musicIntroY + 33,musicIntroX + (145 * (1 - (musicIntroTimer / musicIntroTimerMax))),musicIntroY + 36,false);
	
	draw_set_alpha(1);
	draw_set_color(c_white);
}
#endregion

#region Cutscene
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
#endregion

#region Halberd Escape
if (global.halberdEscape)
{
	#region Draw Overlay
	draw_set_color(c_blue);
	draw_set_alpha(.15);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
	#endregion
	
	#region Draw Timer
	var timerX = (480 / 2) - 32;
	var timerY = 4;
	
	draw_sprite_ext(spr_Hud_Timer,0,timerX,timerY,1,1,image_angle,image_blend,drawAlpha);
	
	if (!global.pause) halberdEscapeTimer -= 1;
	halberdEscapeTimer = clamp(halberdEscapeTimer,0,9999);
	if (halberdEscapeTimer == 0)
	{
		global.healthP1 = 0;
		global.healthP2 = 0;
		global.healthP3 = 0;
		global.healthP4 = 0;
	}
	
	draw_sprite_ext(spr_Hud_TimerNumbers,floor(halberdEscapeTimer / 1000),timerX + 4,timerY + 2,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_TimerNumbers,(halberdEscapeTimer - ((floor(halberdEscapeTimer / 1000) * 1000))) / 100,timerX + 17,timerY + 2,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_TimerNumbers,(halberdEscapeTimer - (floor(halberdEscapeTimer / 100) * 100)) / 10,timerX + 36,timerY + 2,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_TimerNumbers,halberdEscapeTimer - (floor(halberdEscapeTimer / 10) * 10),timerX + 49,timerY + 2,1,1,image_angle,image_blend,drawAlpha);
	#endregion
}
#endregion

#region Alpha
drawAlpha = lerp(drawAlpha,!global.cutscene,.1);
draw_set_alpha(drawAlpha);
#endregion

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

#region Stage Title
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
#endregion

#region Treasures
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
#endregion

#region Player Healthbars
for (var i = 0; i < 4; i++)
{
	#region Variables
	var sep = (104 * i) + (74 * (i >= 2));
	
	var hasCoopPointer = global.hasP1;
	var goldenTomatoAmountPointer = global.goldenTomatoAmountP1;
	var flashPointer = flashP1;
	var healthPointer = global.healthP1;
	var healModPointer = global.healP1Mod;
	var palettePointer = global.sprayPaintP1;
	var characterPointer = global.characterP1;
	var abilityPointer = global.abilityP1;
	switch (i)
	{
		case 1:
		hasCoopPointer = global.hasP2;
		goldenTomatoAmountPointer = global.goldenTomatoAmountP2;
		flashPointer = flashP2;
		healthPointer = global.healthP2;
		healModPointer = global.healP2Mod;
		palettePointer = global.sprayPaintP2;
		characterPointer = global.characterP2;
		abilityPointer = global.abilityP2;
		break;
		
		case 2:
		hasCoopPointer = global.hasP3;
		goldenTomatoAmountPointer = global.goldenTomatoAmountP3;
		flashPointer = flashP3;
		healthPointer = global.healthP3;
		healModPointer = global.healP3Mod;
		palettePointer = global.sprayPaintP3;
		characterPointer = global.characterP3;
		abilityPointer = global.abilityP3;
		break;
		
		case 3:
		hasCoopPointer = global.hasP4;
		goldenTomatoAmountPointer = global.goldenTomatoAmountP4;
		flashPointer = flashP4;
		healthPointer = global.healthP4;
		healModPointer = global.healP4Mod;
		palettePointer = global.sprayPaintP4;
		characterPointer = global.characterP4;
		abilityPointer = global.abilityP4;
		break;
	}
	#endregion
	
	if (hasCoopPointer)
	{
		#region Healthbar Back
		draw_sprite_ext(spr_Hud_Healthbar_Back,i,40 + sep,248,1,1,image_angle,image_blend,drawAlpha);
		#endregion
		
		#region Healthbar
		switch (i)
		{
			case 0:
			if (healModPointer < healthPointer <= 0) hudHpP1 = 0;
			hudHpP1 = clamp(hudHpP1,0,global.healthP1Max);
			healthbarWidthP1 = (sprite_get_width(spr_Hud_Healthbar_Kirby) * .01) * ((global.healthP1 / global.healthP1Max) * 100);
			healthbarMaxWidthP1 = sprite_get_width(spr_Hud_Healthbar_Kirby);
			healthbarHeightP1 = sprite_get_height(spr_Hud_Healthbar_Kirby);
			var healthbarWidthPointer = healthbarWidthP1;
			var healthbarMaxWidthPointer = healthbarMaxWidthP1;
			var healthbarHeightPointer = healthbarHeightP1;
			
			if (global.healP1Mod != global.healthP1)
			{
				if (global.healP1Mod < global.healthP1)
				{
					global.healP1Mod++;
					if (global.healP1Mod > global.healthP1)
					{
						global.healP1Mod = global.healthP1;
					}		
				}
				else if (global.healP1Mod > global.healthP1)
				{
					global.healP1Mod--;
					if (global.healP1Mod < global.healthP1)
					{
						global.healP1Mod = global.healthP1;
					}		
				}
			}
			
			if ((!global.pause) and (healModPointer < healthPointer) and (hudHpP1Timer == -1)) hudHpP1Timer = hudHpTimerMax;
			
			healWidthP1 = (sprite_get_width(spr_Hud_Healthbar_Kirby) * .01) * (((global.healP1Mod - global.healthP1) / global.healthP1Max) * 100);
			healStartP1 = min(healthbarWidthP1 + (healWidthP1 * sign(global.healP1Mod)),healthbarWidthP1);
			var healWidthPointer = healWidthP1;
			var healStartPointer = healStartP1;
			
			var healBarColorPointer = c_teal;
			if (global.healthP1 < global.healP1Mod) healBarColorPointer = c_red;
			break;
			
			case 1:
			if (healModPointer < healthPointer <= 0) hudHpP2 = 0;
			hudHpP2 = clamp(hudHpP2,0,global.healthP2Max);
			healthbarWidthP2 = (sprite_get_width(spr_Hud_Healthbar_Kirby) * .01) * ((global.healthP2 / global.healthP2Max) * 100);
			healthbarMaxWidthP2 = sprite_get_width(spr_Hud_Healthbar_Kirby);
			healthbarHeightP2 = sprite_get_height(spr_Hud_Healthbar_Kirby);
			var healthbarWidthPointer = healthbarWidthP2;
			var healthbarMaxWidthPointer = healthbarMaxWidthP2;
			var healthbarHeightPointer = healthbarHeightP2;
			
			if (global.healP2Mod != global.healthP2)
			{
				if (global.healP2Mod < global.healthP2)
				{
					global.healP2Mod++;
					if (global.healP2Mod > global.healthP2)
					{
						global.healP2Mod = global.healthP2;
					}		
				}
				else if (global.healP2Mod > global.healthP2)
				{
					global.healP2Mod--;
					if (global.healP2Mod < global.healthP2)
					{
						global.healP2Mod = global.healthP2;
					}		
				}
			}
			
			if ((!global.pause) and (healModPointer < healthPointer) and (hudHpP2Timer == -1)) hudHpP2Timer = hudHpTimerMax;
			
			healWidthP2 = (sprite_get_width(spr_Hud_Healthbar_Kirby) * .01) * (((global.healP2Mod - global.healthP2) / global.healthP2Max) * 100);
			healStartP2 = min(healthbarWidthP2 + (healWidthP2 * sign(global.healP2Mod)),healthbarWidthP2);
			var healWidthPointer = healWidthP2;
			var healStartPointer = healStartP2;
			
			var healBarColorPointer = c_teal;
			if (global.healthP1 < global.healP1Mod) healBarColorPointer = c_red;
			break;
			
			case 2:
			if (healModPointer < healthPointer <= 0) hudHpP3 = 0;
			hudHpP3 = clamp(hudHpP3,0,global.healthP3Max);
			healthbarWidthP3 = (sprite_get_width(spr_Hud_Healthbar_Kirby) * .01) * ((global.healthP3 / global.healthP3Max) * 100);
			healthbarMaxWidthP3 = sprite_get_width(spr_Hud_Healthbar_Kirby);
			healthbarHeightP3 = sprite_get_height(spr_Hud_Healthbar_Kirby);
			var healthbarWidthPointer = healthbarWidthP3;
			var healthbarMaxWidthPointer = healthbarMaxWidthP3;
			var healthbarHeightPointer = healthbarHeightP3;
			
			if (global.healP3Mod != global.healthP3)
			{
				if (global.healP3Mod < global.healthP3)
				{
					global.healP3Mod++;
					if (global.healP3Mod > global.healthP3)
					{
						global.healP3Mod = global.healthP3;
					}		
				}
				else if (global.healP3Mod > global.healthP3)
				{
					global.healP3Mod--;
					if (global.healP3Mod < global.healthP3)
					{
						global.healP3Mod = global.healthP3;
					}		
				}
			}
			
			if ((!global.pause) and (healModPointer < healthPointer) and (hudHpP3Timer == -1)) hudHpP3Timer = hudHpTimerMax;
			
			healWidthP3 = (sprite_get_width(spr_Hud_Healthbar_Kirby) * .01) * (((global.healP3Mod - global.healthP3) / global.healthP3Max) * 100);
			healStartP3 = min(healthbarWidthP3 + (healWidthP3 * sign(global.healP3Mod)),healthbarWidthP3);
			var healWidthPointer = healWidthP3;
			var healStartPointer = healStartP3;
			
			var healBarColorPointer = c_teal;
			if (global.healthP1 < global.healP1Mod) healBarColorPointer = c_red;
			break;
			
			case 3:
			if (healModPointer < healthPointer <= 0) hudHpP4 = 0;
			hudHpP4 = clamp(hudHpP4,0,global.healthP4Max);
			healthbarWidthP4 = (sprite_get_width(spr_Hud_Healthbar_Kirby) * .01) * ((global.healthP4 / global.healthP4Max) * 100);
			healthbarMaxWidthP4 = sprite_get_width(spr_Hud_Healthbar_Kirby);
			healthbarHeightP4 = sprite_get_height(spr_Hud_Healthbar_Kirby);
			var healthbarWidthPointer = healthbarWidthP4;
			var healthbarMaxWidthPointer = healthbarMaxWidthP4;
			var healthbarHeightPointer = healthbarHeightP4;
			
			if (global.healP4Mod != global.healthP4)
			{
				if (global.healP4Mod < global.healthP4)
				{
					global.healP4Mod++;
					if (global.healP4Mod > global.healthP4)
					{
						global.healP4Mod = global.healthP4;
					}		
				}
				else if (global.healP4Mod > global.healthP4)
				{
					global.healP4Mod--;
					if (global.healP4Mod < global.healthP4)
					{
						global.healP4Mod = global.healthP4;
					}		
				}
			}
			
			if ((!global.pause) and (healModPointer < healthPointer) and (hudHpP4Timer == -1)) hudHpP4Timer = hudHpTimerMax;
			
			healWidthP4 = (sprite_get_width(spr_Hud_Healthbar_Kirby) * .01) * (((global.healP4Mod - global.healthP4) / global.healthP4Max) * 100);
			healStartP4 = min(healthbarWidthP4 + (healWidthP4 * sign(global.healP4Mod)),healthbarWidthP4);
			var healWidthPointer = healWidthP4;
			var healStartPointer = healStartP4;
			
			var healBarColorPointer = c_teal;
			if (global.healthP1 < global.healP1Mod) healBarColorPointer = c_red;
			break;
		}
		
		draw_sprite_part_ext(spr_Hud_Healthbar_Kirby,flashPointer,0,0,healthbarWidthPointer,healthbarHeightPointer,40 + sep,248,1,1,image_blend,drawAlpha);
		
		//if (healthbarWidthPointer >= 1) draw_sprite_part_ext(spr_Hud_HealthbarCorner_Kirby,flashPointer,0,0,4,7,40 + sep,248,1,1,image_blend,drawAlpha);
		//if (healthbarWidthPointer >= sprite_get_width(spr_Hud_Healthbar_Kirby)) draw_sprite_part_ext(spr_Hud_HealthbarCorner_Kirby,flashPointer,0,0,4,min(7,healthbarWidthPointer),40 + sep + (healthbarWidthPointer - 3),248,1,1,image_blend,drawAlpha);
		
		draw_sprite_part_ext(spr_Hud_HealthbarHeal_Kirby,0,healStartPointer,0,sign(healWidthPointer) * healWidthPointer,healthbarHeightPointer,40 + healStartPointer + sep,248,1,1,healBarColorPointer,drawAlpha);
		#endregion
		
		#region Border
		draw_sprite_ext(spr_Hud_PlayerHealthbarBorder,i,11 + sep,228,1,1,image_angle,image_blend,drawAlpha);
		#endregion
		
		#region Icon
		var iconIndex = scr_Hud_AbilityIcon(abilityPointer,characterPointer);
		if (global.mixActive == i) iconIndex = mixRosterIcon[mixIndex];
		if ((iconIndex == spr_Hud_Icon_Kirby) and (palettePointer == spr_Kirby_Normal_Palette_FriendlyPink)) palettePointer = spr_Hud_Palette_Icon_Kirby;
		
		if ((global.shaders) and (abilityPointer == playerAbilities.none)) pal_swap_set(palettePointer,1 + (flashPointer * 2),false);
		draw_sprite_ext(iconIndex,0,16 + sep,232,1,1,image_angle,image_blend,drawAlpha);
		if ((global.shaders) and (abilityPointer == playerAbilities.none)) pal_swap_reset();
		#endregion
		
		#region Golden Tomatoes
		for (var h = 0; h < global.goldenTomatoAmountMax; h++)
		{
			draw_sprite_ext(spr_Hud_GoldenTomato,(goldenTomatoAmountPointer > h),29 + (10 * h) + sep,258,1,1,image_angle,image_blend,drawAlpha);
		}
		#endregion
		
		#region Name
		var textIndex = scr_Hud_AbilityText(abilityPointer,characterPointer);
		if (global.mixActive == i) iconIndex = mixRosterText[mixIndex];
		if ((textIndex == spr_Hud_AbilityText_Kirby) and (palettePointer == spr_Kirby_Normal_Palette_FriendlyPink)) palettePointer = spr_Hud_Palette_Healthbar_Kirby;
		
		if ((global.shaders) and (abilityPointer == playerAbilities.none)) pal_swap_set(palettePointer,1 + (flashPointer * 2),false);
		draw_sprite_ext(textIndex,0,43 + sep,230,1,1,image_angle,image_blend,drawAlpha);
		if ((global.shaders) and (abilityPointer == playerAbilities.none)) pal_swap_reset();
		#endregion
		
		#region Player Num
		draw_sprite_ext(spr_Hud_PlayerNum,i,2 + sep,252,1,1,image_angle,image_blend,drawAlpha);
		#endregion
	}
}
#endregion

if (global.gamemode != gamemodes.gamblion)
{
	#region Lives
	#region Variables
	global.playerLives = clamp(global.playerLives,0,999);
	var livesBg = spr_Hud_Lives_Background1;
	if (global.hasCoop > 0) livesBg = spr_Hud_Lives_Background2;
	var livesPosX = 16;
	var livesPosY = 13 + (hasTreasure * 28);
	var playerAmount = -1;
	#endregion

	#region Background
	draw_sprite_ext(livesBg,0,livesPosX - 12,livesPosY - 2,1,1,image_angle,image_blend,drawAlpha);
	#endregion

	for (var i = 3; i >= 0; i--)
	{
		#region Pointers
		var sep = (10 * i);
	
		var hasCoopPointer = global.hasP1;
		var palettePointer = global.sprayPaintP1;
		var characterPointer = global.characterP1;
		switch (i)
		{
			case 1:
			hasCoopPointer = global.hasP2;
			palettePointer = global.sprayPaintP2;
			characterPointer = global.characterP2;
			break;
		
			case 2:
			hasCoopPointer = global.hasP3;
			palettePointer = global.sprayPaintP3;
			characterPointer = global.characterP3;
			break;
		
			case 3:
			hasCoopPointer = global.hasP4;
			palettePointer = global.sprayPaintP4;
			characterPointer = global.characterP4;
			break;
		}
		#endregion
	
		#region Icons
		if (hasCoopPointer)
		{
			playerAmount += 1;
		
			if ((characterPointer == playerCharacters.kirby) and (palettePointer == spr_Kirby_Normal_Palette_FriendlyPink)) palettePointer = spr_Hud_Palette_Lives_Kirby;
		
			var icon = spr_Hud_Lives_Icon_Kirby;
		
			switch (characterPointer)
			{
				case playerCharacters.kirby:
				icon = spr_Hud_Lives_Icon_Kirby;
				break;
			
				case playerCharacters.gamble:
				icon = spr_Hud_Lives_Icon_Gamble;
				break;
			
				case playerCharacters.gooey:
				icon = spr_Hud_Lives_Icon_Gooey;
				break;
			}
		
			if (global.shaders) pal_swap_set(palettePointer,1,false);
			draw_sprite_ext(icon,0,livesPosX + sep,livesPosY,1,1,image_angle,image_blend,drawAlpha);
			if (global.shaders) pal_swap_reset();
		}
		#endregion
	}

	#region Numbers
	if (global.cheatLifelessEquipped)
	{
		draw_sprite_ext(spr_Hud_Infinite,0,livesPosX + 23 + (8 * playerAmount),livesPosY - 6,1,1,image_angle,image_blend,drawAlpha);
	}
	else
	{
		draw_sprite_ext(spr_Hud_Numbers,floor(global.playerLives / 100),livesPosX + 14 + (10 * playerAmount),livesPosY - 8,1,1,image_angle,image_blend,drawAlpha);
		draw_sprite_ext(spr_Hud_Numbers,(global.playerLives - ((floor(global.playerLives / 100) * 100))) / 10,livesPosX + 29 + (10 * playerAmount),livesPosY - 8,1,1,image_angle,image_blend,drawAlpha);
		draw_sprite_ext(spr_Hud_Numbers,global.playerLives - (floor(global.playerLives / 10) * 10),livesPosX + 42 + (10 * playerAmount),livesPosY - 8,1,1,image_angle,image_blend,drawAlpha);
	}
	#endregion
	#endregion
	
	#region Point Stars
	#region Variables
	global.pointStars = clamp(global.pointStars,0,999);
	starsPosX = 17;
	starsPosY = 39 + (hasTreasure * 28);
	#endregion

	#region Icons
	draw_sprite_ext(spr_Hud_PointStars_Background,0,starsPosX - 13,starsPosY - 4,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_PointStars_Icon,0,starsPosX,starsPosY,1,1,image_angle,image_blend,drawAlpha);
	#endregion

	#region Numbers
	draw_sprite_ext(spr_Hud_Numbers,floor(global.pointStars / 100),starsPosX + 12,starsPosY - 10,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_Numbers,(global.pointStars - ((floor(global.pointStars / 100) * 100))) / 10,starsPosX + 27,starsPosY - 10,1,1,image_angle,image_blend,drawAlpha);
	draw_sprite_ext(spr_Hud_Numbers,global.pointStars - (floor(global.pointStars / 10) * 10),starsPosX + 42,starsPosY - 10,1,1,image_angle,image_blend,drawAlpha);
	#endregion
	#endregion

	#region Points
/*
var pointsSep = "";

if (global.points < 100000) pointsSep = "0";
if (global.points < 10000) pointsSep = "00";
if (global.points < 1000) pointsSep = "000";
if (global.points < 100) pointsSep = "0000";
if (global.points < 10) pointsSep = "00000";

global.points = clamp(global.points,0,999999);

draw_text(hudX + 25,hudY + 10,pointsSep + string(global.points));
*/
#endregion
}

#region Draw Boss Death Overlay
if (hasBossDeathOverlay)
{
	draw_set_color(bossDeathColor);
	draw_set_alpha(.2);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_color(c_white);
}
#endregion

#region Reset Alpha
draw_set_alpha(1);
#endregion

if (!global.pause)
{
	#region Hud Hp Timer
	if (hudHpP1Timer > 0)
	{
		hudHpP1Timer -= 1;
	}
	else if (hudHpP1Timer == 0)
	{
		if (!audio_is_playing(snd_Heal)) audio_stop_sound(snd_Heal);
		audio_play_sound(snd_Heal,0,false);
		hudHpP1 += 1;
		hudHpP1Timer = -1;
	}
	
	if (hudHpP2Timer > 0)
	{
		hudHpP2Timer -= 1;
	}
	else if (hudHpP2Timer == 0)
	{
		if (!audio_is_playing(snd_Heal)) audio_stop_sound(snd_Heal);
		audio_play_sound(snd_Heal,0,false);
		hudHpP2 += 1;
		hudHpP2Timer = -1;
	}
	
	if (hudHpP3Timer > 0)
	{
		hudHpP3Timer -= 1;
	}
	else if (hudHpP3Timer == 0)
	{
		if (!audio_is_playing(snd_Heal)) audio_stop_sound(snd_Heal);
		audio_play_sound(snd_Heal,0,false);
		hudHpP3 += 1;
		hudHpP3Timer = -1;
	}
	
	if (hudHpP4Timer > 0)
	{
		hudHpP4Timer -= 1;
	}
	else if (hudHpP4Timer == 0)
	{
		if (!audio_is_playing(snd_Heal)) audio_stop_sound(snd_Heal);
		audio_play_sound(snd_Heal,0,false);
		hudHpP4 += 1;
		hudHpP4Timer = -1;
	}
	#endregion
	
	#region Flash Stop Timer
	if (flashP1Timer > 0)
	{
		flashP1Timer -= 1;
	}
	else if (flashP1Timer == 0)
	{
		flashP1 = !flashP1;
		flashP1Timer = flashTimerMax;
	}
	
	if (flashP2Timer > 0)
	{
		flashP2Timer -= 1;
	}
	else if (flashP2Timer == 0)
	{
		flashP2 = !flashP2;
		flashP2Timer = flashTimerMax;
	}
	
	if (flashP3Timer > 0)
	{
		flashP3Timer -= 1;
	}
	else if (flashP3Timer == 0)
	{
		flashP3 = !flashP3;
		flashP3Timer = flashTimerMax;
	}
	
	if (flashP4Timer > 0)
	{
		flashP4Timer -= 1;
	}
	else if (flashP4Timer == 0)
	{
		flashP4 = !flashP4;
		flashP4Timer = flashTimerMax;
	}
	#endregion
	
	#region Flash Stop Timer
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
	
	if (flashStopP3Timer > 0)
	{
		flashStopP3Timer -= 1;
	}
	else if (flashStopP3Timer == 0)
	{
		flashP3 = false;
		flashP3Timer = -1;
		flashStopP3Timer = -1;
	}
	
	if (flashStopP4Timer > 0)
	{
		flashStopP4Timer -= 1;
	}
	else if (flashStopP4Timer == 0)
	{
		flashP4 = false;
		flashP4Timer = -1;
		flashStopP4Timer = -1;
	}
	#endregion
}

#region Mix Timer
if (mixTimer > 0)
{
	mixTimer -= 1;
}
else if (mixTimer == 0)
{
	global.pause = false;
	switch (global.mixActive)
	{
		case 0:
		global.abilityP1 = mixRosterAbility[mixIndex];
		break;
		
		case 1:
		global.abilityP2 = mixRosterAbility[mixIndex];
		break;
		
		case 2:
		global.abilityP3 = mixRosterAbility[mixIndex];
		break;
		
		case 3:
		global.abilityP4 = mixRosterAbility[mixIndex];
		break;
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