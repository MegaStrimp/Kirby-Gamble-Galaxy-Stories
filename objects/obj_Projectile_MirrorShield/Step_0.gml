///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprShield = spr_Projectile_MirrorShield_Normal_Shield;
		sprRing = spr_Projectile_MirrorShield_Normal_Ring;
		break;
	}
	sprite_index = sprShield;
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Destroy
	
	if (!instance_exists(owner)) instance_destroy();
	
	if ((enemy) or (!owner.duck) or (owner.mirrorShieldHp <= 0))
	{
		instance_destroy();
	}
	
	//Sprite Timer
	
	if (spriteTimer > 0)
	{
		spriteTimer -= 1;
	}
	else if (spriteTimer == 0)
	{
		if (sprite_index == sprRing)
		{
			sprite_index = sprShield;
		}
		else
		{
			sprite_index = sprRing;
		}
		spriteTimer = spriteTimerMax;
	}
}