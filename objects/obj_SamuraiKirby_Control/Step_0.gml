///@description Main

if (!global.pause)
{
	//Black Box Timer
	
	if (blackBoxTimer > 0)
	{
		blackBoxTimer -= 1;
	}
	else if (blackBoxTimer == 0)
	{
		switch (blackBoxState)
		{
			case 0:
			blackAlphaBox = true;
			blackBoxState += 1;
			blackBoxTimer = 30;
			break;
			
			case 1:
			LineCharacterPos = sprite_get_width(spr_SamuraiKirby_Hud_LineKirby);
			blackBoxState += 1;
			blackBoxTimer = 45;
			break;
			
			case 2:
			blackBoxState += 1;
			blackBoxTimer = 150;
			break;
			
			case 3:
			gameState = "game";
			blackAlphaBox = false;
			blackBoxState = 0;
			blackBoxTimer = -1;
			break;
		}
	}
}