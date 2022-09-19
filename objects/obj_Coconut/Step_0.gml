///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Coconut_Normal_Idle;
		break;
	}
}

//Event Inherited

event_inherited();

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//Trigger
	
	if (triggered)
	{
		hasGravity = true;
	}
	else
	{
		with (obj_Player)
		{
			if ((x <= other.x + 24) and (x >= other.x - 24)) other.triggered = true;
		}
		hasGravity = false;
	}
	
	//Destroy
	
	if (place_meeting(x,y + 1,collisionY)) death = true;
	
	//Animation
	
	if (triggered)
	{
		image_speed = 1;
	}
	else
	{
		image_speed = 0;
	}
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}