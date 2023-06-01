///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	#region Inputs
	scr_Player_Inputs(0);
	#endregion
	
	#region Unpause
	if (typist.get_paused()) typist.unpause();
	#endregion
	
	#region Variables
	typist.in(textSpeed,2);
	if (typewriter) typist.sound(textSound[array],250,1,1,1);
	
	dialogueFlowing = (typist.get_state() < 1);
	
	if ((!hasResetTimer) and ((keyJumpPressed) or (keyAttackPressed) or (keyStartPressed)))
	{
		if (!dialogueFlowing)
		{
		     resetArray = true;
		}
		else
		{
			io_clear();
			typist.skip();
		}
	}
	#endregion
	
	#region Destroy
	if (image_alpha <= 0) destroyTimer = 0;
	#endregion
	
	#region Reset Array
	if (resetArray)
	{
		io_clear();
		array += 1;
		resetArray = false;
		if (array_length(text) == array) destroyTimer = 0;
	}
	#endregion
	
	if ((hasResetTimer) and (array < array_length(text)) and (!dialogueFlowing))
	{
		#region Reset Timer
		if (resetTimer > 0)
		{
			resetTimer -= 1;
		}
		else if (resetTimer == 0)
		{
			resetArray = true;
			resetTimer = -1;
			if (array + 1 < array_length(resetTimerMax)) resetTimer = resetTimerMax[array + 1];
		}
		#endregion
	}
	
	#region Destroy Timer
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		if (stopsCutscene) global.cutscene = false;
		if (targetRoom != -1)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = targetRoom;
			fade.alphaSpd = .02;
		}
		instance_destroy();
		if ((changeOwnerState) and (owner != -1) and (instance_exists(owner))) owner.stateExTimer = 5;
	    destroyTimer = -1;
	}
	#endregion
}
else
{
	#region Pause
	if (!typist.get_paused()) typist.pause();
	#endregion
}