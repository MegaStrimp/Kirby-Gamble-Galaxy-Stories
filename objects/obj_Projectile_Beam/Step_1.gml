///@description Begin Step

#region Setup Timer
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
		sprIdle = spr_Projectile_Beam_Normal;
		break;
		
		//Enemy
		
		case 1:
		sprIdle = spr_Projectile_Beam_Enemy;
		break;
		
		//Mystic Normal
		
		case 2:
		sprIdle = spr_Projectile_MysticBeam_Normal;
		break;
		
		//Mystic Enemy
		
		case 3:
		sprIdle = spr_Projectile_MysticBeam_Enemy;
		break;
		
		//Fire
		
		case 4:
		sprIdle = spr_Projectile_Beam_Fire;
		break;
		
		//Ufo
		
		case 5:
		sprIdle = spr_Projectile_Beam_Ufo;
		break;
		
		//Gold
		
		case 6:
		sprIdle = spr_Projectile_Beam_Gold;
		break;
		
		//Mystic Beam Air
		
		case 7:
		sprIdle = spr_Projectile_MysticBeam_Air;
		break;
		
		//Wizzer
		
		case 8:
		sprIdle = spr_Projectile_Beam_Wizzer;
		break;
		
		//Marx Soul 1
		
		case 9:
		sprIdle = spr_Projectile_Beam_MarxSoul1;
		break;
		
		//Marx Soul 2
		
		case 10:
		sprIdle = spr_Projectile_Beam_MarxSoul2;
		break;
	}
	orbitMaxFinal = orbitMax;
	setupTimer = -1;
}
#endregion

#region Event Inherited
event_inherited();
#endregion