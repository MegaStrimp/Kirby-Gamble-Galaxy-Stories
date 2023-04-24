///@description Main

//Event Inherited

event_inherited();

//Hurt Player

scr_Enemy_HurtsPlayer(dmg);

if (!childPause)
{
	//Get Inhaled
	
	scr_Object_Inhale(enemy);
	
	//States
	
	if (state == 1)
	{
		if (float)
		{
			destroyOutsideView = true;
			hsp = 0;
			vsp = lerp(vsp,floatspeed,.1);
		}
		else
		{
			destroyOutsideView = false;
			if (!hurt)
			{
				scr_AI_HorizontalStraightMovement(true,false);
				scr_AI_VerticalWaveMovement(false);
			}
			else
			{
				hsp = 0;
				vsp = 0;
			}
		}
	}
	
	//Float Timer
	
	if (state == 1)
	{
		if (floatTimer > 0)
		{
			floatTimer -= 1;
		}
		else if (floatTimer == 0)
		{
			float = true;
			sprite_index = sprFloatReady;
			floatSpriteSet = true;
			floatTimer = -1;
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
		if (!float)
		{
			sprite_index = sprIdle;
		}
	}
}
else
{
	image_speed = 0;
}