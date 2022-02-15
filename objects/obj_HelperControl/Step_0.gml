///@description Main

//Inputs

scr_Player_Inputs(player);

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	var helperList = ds_list_create();
	
	ds_list_add(helperList,playerCharacters.waddleDee);
	ds_list_add(helperList,playerCharacters.waddleDoo);
	ds_list_add(helperList,playerCharacters.brontoBurt);
	ds_list_add(helperList,playerCharacters.bouncy);
	ds_list_add(helperList,playerCharacters.gordo);
	ds_list_add(helperList,playerCharacters.bloodGordo);
	ds_list_shuffle(helperList);
	
	for (var i = 0; i < 3; i++)
	{
		var helperCharacter = ds_list_find_value(helperList,i);
		helperName[i] = helperCharacter;
		switch (helperCharacter)
		{
			case playerCharacters.waddleDee:
			helperSprite[i] = spr_Hud_Helper_WaddleDee;
			break;
			
			case playerCharacters.waddleDoo:
			helperSprite[i] = spr_Hud_Helper_WaddleDoo;
			break;
			
			case playerCharacters.brontoBurt:
			helperSprite[i] = spr_Hud_Helper_BrontoBurt;
			break;
			
			case playerCharacters.bouncy:
			helperSprite[i] = spr_Hud_Helper_Bouncy;
			break;
			
			case playerCharacters.gordo:
			helperSprite[i] = spr_Hud_Helper_Gordo;
			break;
			
			case playerCharacters.bloodGordo:
			helperSprite[i] = spr_Hud_Helper_BloodGordo;
			break;
		}
	}
	ds_list_destroy(helperList);
	arrayLength = array_length(helperName);
	setupTimer = -1;
}

//Destroy

if (instance_exists(owner))
{
	var isHelper = global.isHelperP1;
	if (owner.player == 1) isHelper = global.isHelperP2;
	
	if (!isHelper) instance_destroy();
}
else
{
	instance_destroy();
}

//Control

if (keyLeftPressed)
{
	if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
	audio_play_sound(snd_BossHealth,0,false);
    selection -= 1;
}
if (keyRightPressed)
{
	if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
	audio_play_sound(snd_BossHealth,0,false);
    selection += 1;
}

if (selection < 0) selection += arrayLength;
if (selection >= arrayLength) selection -= arrayLength;

if (keySelectPressed)
{
	if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
	audio_play_sound(snd_ButtonNo,0,false);
	global.helperHud = false;
	global.pause = false;
	owner.helperTimer = floor(owner.helperTimerMax / 2);
	owner.blackAlphaBox = false;
	if (owner.player == 0)
	{
		global.isHelperP1 = false;
	}
	else
	{
		global.isHelperP2 = false;
	}
	owner.characterSetupTimer = 0;
	instance_destroy();
}

if (keyStartPressed)
{
	if (audio_is_playing(snd_AbilitySwitch)) audio_stop_sound(snd_AbilitySwitch);
	audio_play_sound(snd_AbilitySwitch,0,false);
	global.helperHud = false;
	global.pause = false;
	var par = instance_create_depth(owner.x,owner.y,owner.depth - 1,obj_Particle);
	par.sprite_index = spr_Particle_Flash1;
	par.scale = 1.5;
	par.destroyAfterAnimation = true;
	for (var i = 0; i < 3; i++)
	{
		var parDirection = irandom_range(0,359);
		var par = instance_create_depth(owner.x,owner.y,owner.depth - 1,obj_Particle);
		par.sprite_index = spr_Particle_BigStar_Yellow;
		par.imageSpeed = 0;
		par.spdBuiltIn = 8;
		par.fricSpd = .3;
		par.direction = parDirection;
		par.trailTimer = 0;
		par.destroyTimer = 10;
		var parScaleDir = 1;
		if ((par.direction > 90) and (par.direction <= 270)) parScaleDir = -1;
		par.dir = parScaleDir;
	}
	owner.helperTimer = owner.helperTimerMax;
	owner.blackAlphaBox = false;
	if (owner.player == 0)
	{
		global.characterP1 = helperName[selection];
		global.isHelperP1 = false;
	}
	else
	{
		global.characterP2 = helperName[selection];
		global.isHelperP2 = false;
	}
	owner.characterSetupTimer = 0;
	if (instance_exists(obj_Pause_Control)) obj_Pause_Control.pauseDelay = 1;
	instance_destroy();
}

y = lerp(y,ystart - 48,.1);
hudWidth = lerp(hudWidth,hudWidthTarget,.1);
hudHeight = lerp(hudHeight,hudHeightTarget,.1);

rot -= angle_difference(rot,(arrayLength - selection) * (360 / arrayLength)) / (.08 * room_speed);