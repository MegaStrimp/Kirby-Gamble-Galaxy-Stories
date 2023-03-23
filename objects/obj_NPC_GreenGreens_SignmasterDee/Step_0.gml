///@description Main

#region Event Inherited
event_inherited();
#endregion

if ((!global.pause) and ((!global.cutscene) or ((global.cutscene) and (global.currentNPC = id))))
{
	#region Activate
	if (active)
	{
		scr_PlayCutscene(cutsceneIndex);
		active = false;
	}
	#endregion
	
	#region Animation
	image_speed = 1;
	
	sprite_index = sprIdle;
	#endregion
}
else
{
	image_speed = 0;
}