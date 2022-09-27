///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Como_Normal_Idle;
		sprFall = spr_Como_Normal_Fall;
		sprHurt = spr_Como_Normal_Hurt;
		break;
	}
}

//Event Inherited

event_inherited();

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Activate
	
	with (obj_Player)
	{
		if (distance_to_object(other) <= 320)
		{
			other.attack = true;
		}
		else
		{
		}
	}
	
	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != -1))
	{
		sprite_index = sprHurt;
	}
	else
	{
		if (vsp > 0)
		{
			sprite_index = sprFall;
		}
		else
		{
			sprite_index = sprIdle;
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}