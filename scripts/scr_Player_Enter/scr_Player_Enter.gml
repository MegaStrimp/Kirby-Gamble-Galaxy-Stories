///@description Enter State

function scr_Player_Enter()
{
	if (!global.pause)
	{
		//Variables
		
		var playerCharacter = global.characterP1;
		if (player == 1) playerCharacter = global.characterP2;
		
		var playerAbility = global.abilityP1;
		if (player == 1) playerAbility = global.abilityP2;
		
		invincible = true;
		
		//Animation
		
		image_speed = 1;
		
		if (playerAbility != "ufo")
		{
			sprite_index = sprEnter;
		}
		else
		{
			sprite_index = sprUfoIdle;
		}
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}