///@description Main

//Debug Mode

if ((global.debug) and (!global.gambleMaykr))
{
	if (!instance_exists(obj_DebugMode)) instance_create_depth(x,y,-999,obj_DebugMode);
	if (!instance_exists(obj_DebugConsole)) instance_create_depth(x,y,-999,obj_DebugConsole);
}
else
{
	if (instance_exists(obj_DebugMode)) instance_destroy(obj_DebugMode);
	if (instance_exists(obj_DebugConsole)) instance_destroy(obj_DebugConsole);
}

//Audio Volume

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

for (var i = 0; audio_exists(i); i++)
{
	var soundString = string_copy(audio_get_name(i),0,3);
    if (soundString == "mus")
	{
		var musicVolume = global.musicVolume * gamePaused;
		if (global.muted) musicVolume = 0;
        audio_sound_gain(i,musicVolume,0);
	}
    else if (soundString == "snd")
	{
		var soundVolume = global.soundVolume;
		if (global.muted) soundVolume = 0;
        audio_sound_gain(i,soundVolume,0);
	}
}