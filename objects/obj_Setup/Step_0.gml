///@description Main

#region Debug Overlay
show_debug_overlay(global.debugOverlay);
#endregion

//Variables

if (global.gamemode == gamemodes.maykr)
{
	//window_set_cursor(cr_none);
}
else
{
	window_set_cursor(cr_default);
}

with (obj_Dialogue)
{
	global.dialogueFlowing = dialogueFlowing;
}

//Debug Mode

if ((global.debug) and (global.gamemode != gamemodes.maykr))
{
	if (!instance_exists(obj_DebugMode)) instance_create_depth(x,y,-999,obj_DebugMode);
}
else
{
	if (instance_exists(obj_DebugMode)) instance_destroy(obj_DebugMode);
}

//Audio

if (keyboard_check_pressed(ord("M")))
{
	if (global.muted)
	{
		global.muted = false;
	}
	else
	{
		global.muted = true;
	}
}

var gamePaused = 1;

if ((instance_exists(obj_Pause_Control)) and (obj_Pause_Control.gamePaused)) gamePaused = .5;

global.hasInvinCandy = false;
global.hasMintLeaf = false;
with (obj_Player)
{
	if (hasInvinCandy)
	{
		global.hasInvinCandy = true;
		if (!audio_is_playing(mus_InvincibilityCandy)) scr_PlayMusic(false,false,mus_InvincibilityCandy,0,true);
	}
	
	if (hasMintLeaf)
	{
		global.hasMintLeaf = true;
	}
}

if ((!global.hasInvinCandy) and (audio_is_playing(mus_InvincibilityCandy))) audio_stop_sound(mus_InvincibilityCandy);

var musicIsPlaying = true;
if ((!global.stageMusicIsPlaying) or (global.hasInvinCandy)) musicIsPlaying = false;

global.musicFade = lerp(global.musicFade,musicIsPlaying,.05);

for (var i = 0; audio_exists(i); i++)
{
	var soundString = string_copy(audio_get_name(i),0,3);
    if (soundString == "mus")
	{
		var fadeMultiplier = 1;
		var audioName = audio_get_name(i);
		if ((audioName == audio_get_name(global.musicPlaying)) and (audioName != "mus_MiniBoss") and (audioName != "mus_InvincibilityCandy")) fadeMultiplier = global.musicFade;
		var musicVolume = global.musicVolume * gamePaused * fadeMultiplier * global.closingvol;
		if (global.muted) musicVolume = 0;
        audio_sound_gain(i,musicVolume,0);
	}
    else if (soundString == "snd")
	{
		var soundVolume = global.soundVolume * global.closingvol;
		if (global.muted) soundVolume = 0;
        audio_sound_gain(i,soundVolume,0);
	}
}

//Game Time

global.gameTimeSeconds += 1;
if (global.gameTimeSeconds >= 60)
{
	global.gameTimeSeconds -= 60;
	global.gameTimeMinutes += 1;
}
if (global.gameTimeMinutes >= 60)
{
	global.gameTimeMinutes -= 60;
	global.gameTimeHours += 1;
}

#region Controllers
var controllerSensitivity = .9;

for (var i = 0; i < 4; i++)
{
    if (!global.stickLeftHeld[i] && gamepad_axis_value(global.playerGamepad[i],gp_axislh) <= -controllerSensitivity)
    {
        global.stickLeftHeld[i] = true;
        global.stickLeftPressed[i] = true;
        global.stickLeftReleased[i] = false;
        controllerPressedResetTimer = 1;
    }
    else if (global.stickLeftHeld[i] && gamepad_axis_value(global.playerGamepad[i],gp_axislh) > -controllerSensitivity)
    {
        global.stickLeftHeld[i] = false;
        global.stickLeftPressed[i] = false;
        global.stickLeftReleased[i] = true;
        controllerPressedResetTimer = 1;
    }
	
    if (!global.stickRightHeld[i] && gamepad_axis_value(global.playerGamepad[i],gp_axislh) >= controllerSensitivity)
    {
        global.stickRightHeld[i] = true;
        global.stickRightPressed[i] = true;
        global.stickRightReleased[i] = false;
        controllerPressedResetTimer = 1;
    }
    else if (global.stickRightHeld[i] && gamepad_axis_value(global.playerGamepad[i],gp_axislh) < controllerSensitivity)
    {
        global.stickRightHeld[i] = false;
        global.stickRightPressed[i] = false;
        global.stickRightReleased[i] = true;
        controllerPressedResetTimer = 1;
    }
	
    if (!global.stickUpHeld[i] && gamepad_axis_value(global.playerGamepad[i],gp_axislv) <= -controllerSensitivity)
    {
        global.stickUpHeld[i] = true;
        global.stickUpPressed[i] = true;
        global.stickUpReleased[i] = false;
        controllerPressedResetTimer = 1;
    }
    else if (global.stickUpHeld[i] && gamepad_axis_value(global.playerGamepad[i],gp_axislv) > -controllerSensitivity)
    {
        global.stickUpHeld[i] = false;
        global.stickUpPressed[i] = false;
        global.stickUpReleased[i] = true;
        controllerPressedResetTimer = 1;
    }
	
    if (!global.stickDownHeld[i] && gamepad_axis_value(global.playerGamepad[i],gp_axislv) >= controllerSensitivity)
    {
        global.stickDownHeld[i] = true;
        global.stickDownPressed[i] = true;
        global.stickDownReleased[i] = false;
        controllerPressedResetTimer = 1;
    }
    else if (global.stickDownHeld[i] && gamepad_axis_value(global.playerGamepad[i],gp_axislv) < controllerSensitivity)
    {
        global.stickDownHeld[i] = false;
        global.stickDownPressed[i] = false;
        global.stickDownReleased[i] = true;
        controllerPressedResetTimer = 1;
    }
}

if (controllerPressedResetTimer > 0)
{
	controllerPressedResetTimer -= 1;
}
else if (controllerPressedResetTimer == 0)
{
	for (var i = 0; i < 4; i++)
	{
	    global.stickLeftPressed[i] = false;
	    global.stickRightPressed[i] = false;
	    global.stickUpPressed[i] = false;
	    global.stickDownPressed[i] = false;
		
	    global.stickLeftReleased[i] = false;
	    global.stickRightReleased[i] = false;
	    global.stickUpReleased[i] = false;
	    global.stickDownReleased[i] = false;
	}
	controllerPressedResetTimer = -1;
}
#endregion