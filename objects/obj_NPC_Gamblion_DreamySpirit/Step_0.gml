///@description Main

#region Event Inherited
event_inherited();
#endregion

if ((!global.pause) and ((!global.cutscene) or ((global.cutscene) and (global.currentNPC = id))))
{
	#region Outline Angle
	outlineAngle -= 1.5;
	if (outlineAngle < 0) outlineAngle += 360;
	#endregion
	
	#region Activate
	if (active)
	{
		scr_PlayCutscene(cutsceneIndex);
		active = false;
	}
	#endregion
	
	#region Animation
	image_speed = 1 + (global.dialogueFlowing * 1);
	
	sprite_index = sprOutlineIdle;
	#endregion
}
else
{
	image_speed = 0;
}