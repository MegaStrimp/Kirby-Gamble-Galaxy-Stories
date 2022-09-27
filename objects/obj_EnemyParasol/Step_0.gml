///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_EnemyParasol_Normal_Idle;
		sprFloatReady = spr_EnemyParasol_Normal_FloatReady;
		sprFloat = spr_EnemyParasol_Normal_Idle;
		sprHurt = -1;
		break;
		
		//Sci-Fi
		
		case 1:
		sprIdle = spr_EnemyParasol_SciFi_Idle;
		sprFloatReady = spr_EnemyParasol_SciFi_FloatReady;
		sprFloat = spr_EnemyParasol_SciFi_Idle;
		sprHurt = -1;
		break;
	}
}

//Event Inherited

event_inherited();

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	//Get Inhaled
	
	scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
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
	shakeX = 0;
	shakeY = 0;
}