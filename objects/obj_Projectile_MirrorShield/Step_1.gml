///@description Begin Step

#region Setup Timer
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
#endregion

#region Event Inherited
event_inherited();
#endregion