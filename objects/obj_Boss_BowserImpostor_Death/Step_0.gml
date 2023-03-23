///@description Main

if (!global.pause)
{
	//Gravity
	
	if (vsp < gravLimit)
	{
		vsp += grav;
	}
	else
	{
		vsp = gravLimit;
	}
	
	y += vsp;
	
	#region State Timer
	if (stateTimer > 0)
	{
		stateTimer -= 1;
	}
	else if (stateTimer == 0)
	{
		switch (state)
		{
			case 0:
			state += 1;
			audio_play_sound(snd_BowserDeath,0,false);
			vsp = -3;
			stateTimer = 45;
			break;
			
			case 1:
			state += 1;
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.alphaSpd = .005;
			fade.targetRoom = rm_MainMenu;
			break;
		}
	}
	#endregion
}