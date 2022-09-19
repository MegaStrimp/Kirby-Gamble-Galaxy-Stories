///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_HiveDrone_Normal_Idle;
		sprAttack = spr_HiveDrone_Normal_Attack;
		sprDrop = spr_HiveDrone_Normal_Drop;
		sprHurt = spr_HiveDrone_Normal_Hurt;
		sprWings = spr_HiveDrone_Normal_Wings;
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
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}