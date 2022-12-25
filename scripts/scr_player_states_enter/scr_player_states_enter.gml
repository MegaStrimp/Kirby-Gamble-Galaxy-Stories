///@description Enter State

function scr_Player_States_Enter()
{
	if (!global.pause)
	{
		//Variables
		
		switch (player)
		{
			case 0:
			var playerAbility = global.abilityP1;
			var playerCharacter = global.characterP1;
			break;
			
			case 1:
			var playerAbility = global.abilityP2;
			var playerCharacter = global.characterP2;
			break;
			
			case 2:
			var playerAbility = global.abilityP3;
			var playerCharacter = global.characterP3;
			break;
			
			case 3:
			var playerAbility = global.abilityP4;
			var playerCharacter = global.characterP4;
			break;
		}
		
		invincible = true;
		
		//Animation
		
		image_speed = 1;
		
		if (playerAbility != playerAbilities.ufo)
		{
			sprite_index = sprEnter;
		}
		else
		{
			sprite_index = sprUfoEnter;
		}
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}