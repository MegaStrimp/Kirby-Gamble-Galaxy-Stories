///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Anemonee_Normal_Idle;
		sprHurt = spr_Anemonee_Normal_Hurt;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//States
	
	switch (state)
	{
		//Stand Still
		
		case 0:
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
		break;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}