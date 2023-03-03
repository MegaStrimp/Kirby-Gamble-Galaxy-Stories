///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
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


