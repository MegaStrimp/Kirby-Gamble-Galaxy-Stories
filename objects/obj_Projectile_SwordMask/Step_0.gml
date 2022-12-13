///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprNormal = spr_Projectile_SwordMask1;
		sprDash = spr_Projectile_SwordMask2;
		sprAir = spr_Projectile_SwordMaskAir;
		sprSpin = spr_Projectile_SwordMaskSpin;
		sprCombo = spr_Projectile_SwordMask1;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Destroy
	
	if (instance_exists(owner))
	{
		if ((!enemy) and (
		owner.attackNumber != playerAttacks.swordNormal
		&& owner.attackNumber != playerAttacks.swordCombo
		&& owner.attackNumber != playerAttacks.swordBarrage
		&& owner.attackNumber != playerAttacks.swordAir
		&& owner.attackNumber != playerAttacks.swordAirDash
		&& owner.attackNumber != playerAttacks.swordSpin
		&& owner.attackNumber != playerAttacks.swordDash
		&& owner.attackNumber != playerAttacks.swordRising
		&& owner.attackNumber != playerAttacks.swordFalling
		)
		)
		{
			instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}
	
	//That's what the Mask is, that's what the point of the mask is.
	if sprite_index=sprNormal || (sprite_index=sprAir && image_index<5)
		mask_index=spr_Projectile_SwordMask_Mask
		else mask_index=sprite_index
	
	//Animation
	
	image_speed = 1;	

}


