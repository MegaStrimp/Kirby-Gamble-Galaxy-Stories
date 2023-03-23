///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_Bomb_Normal;
		sprBig = spr_Projectile_Bomb_Normal_Big;
		break;
		
		//Modern
		
		case 1:
		sprIdle = spr_Projectile_Bomb_Modern;
		sprBig = spr_Projectile_Bomb_Modern_Big;
		break;
		
		//Egg
		
		case 2:
		sprIdle = spr_Projectile_Bomb_Egg;
		sprBig = spr_Projectile_Bomb_Egg_Big;
		break;
		
		//Fetus
		
		case 3:
		sprIdle = spr_Projectile_Bomb_Fetus;
		sprBig = spr_Projectile_Bomb_Fetus;
		break;
		
		//DL1 Poppy
		
		case 4:
		sprIdle = spr_DL1_PoppyBrosSr_Bomb;
		sprBig = spr_DL1_PoppyBrosSr_Bomb;
		break;
	}
	
	if (hasHoming)
	{
		if (hasRemoteDetonation)
		{
			if (hasMagma)
			{
				sprIdle = spr_Projectile_Bomb_Normal_EyStMa;
				sprBig = spr_Projectile_Bomb_Normal_EyStMaBig;
				canRotate = true;
				hasParticle = false;
			}
			else
			{
				sprIdle = spr_Projectile_Bomb_Normal_EySt;
				sprBig = spr_Projectile_Bomb_Normal_EyStBig;
				canRotate = false;
				hasParticle = false;
			}
		}
		else if (hasMagma)
		{
			sprIdle = spr_Projectile_Bomb_Normal_EyMa;
			sprBig = spr_Projectile_Bomb_Normal_EyMaBig;
		}
		else
		{
			sprIdle = spr_Projectile_Bomb_Normal_Ey;
			sprBig = spr_Projectile_Bomb_Normal_BigEy;
		}
	}
	else if (hasRemoteDetonation)
	{
		if (hasMagma)
		{
			sprIdle = spr_Projectile_Bomb_Normal_StMa;
			sprBig = spr_Projectile_Bomb_Normal_StMaBig;
			canRotate = false;
			hasParticle = false;
		}
		else
		{
			sprIdle = spr_Projectile_Bomb_Normal_St;
			sprBig = spr_Projectile_Bomb_Normal_BigSt;
			canRotate = false;
			hasParticle = false;
		}
	}
	else if (hasMagma)
	{
		sprIdle = spr_Projectile_Bomb_Normal_Ma;
		sprBig = spr_Projectile_Bomb_Normal_BigMa;
		hasParticle = false;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion