///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Kookler_Normal_Idle;
		sprHurt = spr_Kookler_Normal_Hurt;
		break;
	}
	
	switch (state)
	{
		case 0:
		followedPath = pth_Enemy_Kookler_Circle;
		break;
		
		case 1:
		followedPath = pth_Enemy_Kookler_Circle;
		break;
	}
	path_start(followedPath,spd * walkDirX,path_action_restart,0);
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Movement
	
	path_speed = spd * walkDirX;

	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != -1))
	{
		sprite_index = sprHurt;
	}
	else
	{
		sprite_index = sprIdle;
	}
}
else
{
	path_speed = 0;
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}