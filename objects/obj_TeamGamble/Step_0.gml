///@description Main

if (!global.pause)
{
	//Alpha
	
	alpha = lerp(alpha,alphaTarget,.05);
	
	//Strimp Animation
	
	strimpAnim += .1;
	if (strimpAnim > 2) strimpAnim -= 2;
	
	//State Timer
	
	if (stateTimer > 0)
	{
		stateTimer -= 1;
	}
	else if (stateTimer == 0)
	{
		state += 1;
		switch (state)
		{
			case 1:
			alphaTarget = 1;
			var rng = irandom_range(0,99);
			var mus = mus_TeamGamble;
			if (rng == 0) mus = mus_Slidecrushed;
			scr_PlayMusic(false,mus,0,false);
			stateTimer = 150;
			break;
			
			case 2:
			alphaTarget = 0;
			stateTimer = 120;
			break;
			
			case 3:
			alphaTarget = 1;
			transitionTimer = 300;
			stateTimer = -1;
			break;
		}
	}
	
	//Transition Timer
	
	if (transitionTimer > 0)
	{
		transitionTimer -= 1;
	}
	else if (transitionTimer == 0)
	{
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = rm_Title;
		fade.alphaSpd = .05;
		transitionTimer = -1;
	}
	
	//Animation
	
	image_alpha = alpha;
}