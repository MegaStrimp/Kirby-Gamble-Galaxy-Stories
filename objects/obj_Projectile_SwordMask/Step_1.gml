///@description Begin Step

#region Setup Timer
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
#endregion

#region Event Inherited
event_inherited();
#endregion