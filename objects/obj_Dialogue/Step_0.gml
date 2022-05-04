///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	//Variables
	
	text_speed = room_speed / textSpeed;
	if (text_length <= 0)
	{
	   text_length = string_length(text[array]);
	}
	
	if ((!hasResetTimer) and ((keyJumpPressed) or (keyStartPressed)))
	{
		if (index >= text_length)
		{
		     resetArray = true;
		}
		else
		{
			io_clear();
			index = text_length;
			text_displayed = string_copy(text[array],1,index);
		}
	}
	
	if (image_alpha <= 0) destroyTimer = 0;
	
	if (index < text_length)
	{
	   cooldown--;
	   if (cooldown <= 0)
	   {
	       index++;
	       text_displayed = string_copy(text[array],1,index);
	       cooldown = text_speed;
	       if (typewriter)
		   {
			   if ((soundPlaying != -1) and (audio_is_playing(soundPlaying))) audio_stop_sound(soundPlaying);
			   if (textSound[array] != -1) soundPlaying = audio_play_sound(textSound[array],0,false);
		   }
	   }
	}
	
	//Reset Array
	
	if (resetArray)
	{
		io_clear();
		array += 1;
		text_displayed = "";
		text_length = -1;
		index = 0;
		resetArray = false;
		if (array_length(text) == array) destroyTimer = 0;
	}
	
	if (hasResetTimer)
	{
		//Reset Timer
		
		if (resetTimer > 0)
		{
			resetTimer -= 1;
		}
		else if (resetTimer == 0)
		{
			resetArray = true;
		    resetTimer = resetTimerMax[array];
		}
	}
	
	//Destroy Timer
	
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
		if (endTutorialNotif)
		{
			global.tutorialNotif = false;
			global.cutscene = false;
			global.pause = false;
		}
	    destroyTimer = -1;
	}
}