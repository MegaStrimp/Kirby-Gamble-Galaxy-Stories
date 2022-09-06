///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Juckle_Normal_Idle;
		sprReady = spr_Juckle_Normal_Ready;
		sprAttack = spr_Juckle_Normal_Attack;
		sprReload = spr_Juckle_Normal_Reload;
		sprHurt = spr_Juckle_Normal_Hurt;
		break;
	}
	if (state == 0)
	{
		attackDir = 90 - (dirX * 90);
	}
	else if (state == 1)
	{
		attackDir = 90;
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
	
	if (!hurt)
	{
		//Attack Timer
		
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			sprite_index = sprReady;
			attack = true;
			attackTimer = -1;
		}
	}
	else
	{
		attack = false;
		attackTimer = attackTimerMax;
	}
	
	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != -1))
	{
		sprite_index = sprHurt;
	}
	else if (!attack)
	{
		sprite_index = sprIdle;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}