/// @description Begin Step

//Characters and Beam

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_MysticBlock_Normal_Idle;
		sprReady = spr_MysticBlock_Normal_Ready;
		sprAttack = spr_MysticBlock_Normal_Attack;
		sprHurt = spr_MysticBlock_Normal_Hurt;
		sprToplessIdle = spr_MysticBlock_Normal_ToplessIdle;
		sprToplessReady = spr_MysticBlock_Normal_ToplessReady;
		sprToplessAttack = spr_MysticBlock_Normal_ToplessAttack;
		sprToplessHurt = spr_MysticBlock_Normal_ToplessHurt;
		break;
	}
}

//Event Inherited

event_inherited();