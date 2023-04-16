///@description Draw

#region Set Draw Attributes
draw_set_font(fnt_Menu);
draw_set_color(c_white);
#endregion

switch (state)
{
	#region Auth 1
	case firstTimeSetupStates.auth1:
	draw_text(10,20,"Authenticating...");
	break;
	#endregion
	
	#region Auth 2
	case firstTimeSetupStates.auth2:
	draw_text(10,20,"Authenticating...");
	draw_text(10,55,"DirextX");
	break;
	#endregion
	
	#region Auth 3
	case firstTimeSetupStates.auth3:
	draw_text(10,20,"Authenticating...");
	draw_text(10,55,"DirextX");
	if (global.shaders)
	{
		draw_set_color(c_gray);
		draw_text(100,55,"Found");
	}
	else
	{
		draw_set_color(c_dkgray);
		draw_text(100,55,"Not Found");
	}
	draw_set_color(c_white);
	break;
	#endregion
	
	#region Auth 4
	case firstTimeSetupStates.auth4:
	draw_text(10,20,"Authenticating...");
	draw_text(10,55,"DirextX");
	if (global.shaders)
	{
		draw_set_color(c_gray);
		draw_text(100,55,"Found");
	}
	else
	{
		draw_set_color(c_dkgray);
		draw_text(100,55,"Not Found");
	}
	draw_set_color(c_white);
	
	draw_text(10,70,"Discord");
	break;
	#endregion
	
	#region Auth 5
	case firstTimeSetupStates.auth5:
	draw_text(10,20,"Authenticating...");
	draw_text(10,55,"DirextX");
	if (global.shaders)
	{
		draw_set_color(c_gray);
		draw_text(100,55,"Found");
	}
	else
	{
		draw_set_color(c_dkgray);
		draw_text(100,55,"Not Found");
	}
	draw_set_color(c_white);
	
	draw_text(10,70,"Discord");
	if (global.discord)
	{
		draw_set_color(c_gray);
		draw_text(100,70,"Found");
	}
	else
	{
		draw_set_color(c_dkgray);
		draw_text(100,70,"Not Found");
	}
	draw_set_color(c_white);
	break;
	#endregion
	
	#region Language
	case firstTimeSetupStates.language:
	draw_set_color(c_gray);
	draw_text_ext(10,20,string_SelectLanguage,-1,440);
	
	if (selection == "languages")
	{
		draw_set_color(c_white);
	}
	else
	{
		draw_set_color(c_dkgray);
	}
	draw_text_ext(40,80,"<--   " + string(languageIndex[subSelection]) + "   -->",-1,440);
	
	if (selection == "confirm")
	{
		draw_set_color(c_white);
	}
	else
	{
		draw_set_color(c_dkgray);
	}
	draw_text_ext(40,120,string_Checks_Confirm,-1,440);
	break;
	#endregion
	
	#region Audio
	case firstTimeSetupStates.audio:
	draw_set_color(c_gray);
	draw_text_ext(10,20,string_AdjustAudio,-1,440);
	
	if (selection == "music")
	{
		draw_set_color(c_white);
	}
	else
	{
		draw_set_color(c_dkgray);
	}
	draw_text_ext(10,80,string(string_Music) + "   <--   " + string(round(global.musicVolume * 100)) + "%" + "   -->",-1,440);
	
	if (selection == "sfx")
	{
		draw_set_color(c_white);
	}
	else
	{
		draw_set_color(c_dkgray);
	}
	draw_text_ext(10,120,string(string_SoundEffects) + "   <--   " + string(round(global.soundVolume * 100)) + "%" + "   -->",-1,440);
	
	if (selection == "confirm")
	{
		draw_set_color(c_white);
	}
	else
	{
		draw_set_color(c_dkgray);
	}
	draw_text_ext(10,160,string_Checks_Confirm,-1,440);
	break;
	#endregion
	
	#region Display
	case firstTimeSetupStates.display:
	draw_set_color(c_gray);
	draw_text_ext(10,20,string_AdjustDisplay,-1,440);
	
	if (selection == "fullscreen")
	{
		draw_set_color(c_white);
	}
	else
	{
		draw_set_color(c_dkgray);
	}
	var isActive = string_False;
	if (global.fullscreen) isActive = string_True;
	draw_text_ext(10,80,string(string_Fullscreen) + "   -   " + string(isActive),-1,440);
	
	if (selection == "screenSize")
	{
		if (global.fullscreen)
		{
			draw_set_color(c_gray);
		}
		else
		{
			draw_set_color(c_white);
		}
	}
	else
	{
		draw_set_color(c_dkgray);
	}
	var windowScale = 0;
	if (instance_exists(obj_Camera)) windowScale = global.windowSize;
	draw_text_ext(10,120,string(string_WindowSize) + "   -   " + string(windowScale) + "X",-1,440);
	
	if (selection == "confirm")
	{
		draw_set_color(c_white);
	}
	else
	{
		draw_set_color(c_dkgray);
	}
	draw_text_ext(10,160,string_Checks_Confirm,-1,440);
	break;
	#endregion
	
	#region Config Complete
	case firstTimeSetupStates.configComplete:
	draw_text_ext(10,20,"Configuration is complete - You can change the options from the Main Menu",-1,440);
	break;
	
	case firstTimeSetupStates.done:
	case firstTimeSetupStates.transition:
	draw_text_ext(10,20,"The game is set to begin now. Have fun!",-1,440);
	break;
	#endregion
}

#region Reset Draw Attributes
draw_set_color(c_white);
#endregion