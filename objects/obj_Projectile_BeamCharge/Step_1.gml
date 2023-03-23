///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprForm1 = spr_Projectile_BeamCharge_Normal_Form1;
		sprForm2 = spr_Projectile_BeamCharge_Normal_Form2;
		sprForm3 = spr_Projectile_BeamCharge_Normal_Form3;
		sprForm4 = spr_Projectile_BeamCharge_Normal_Form4;
		break;
		
		//Gold
		
		case 1:
		sprForm1 = spr_Projectile_BeamCharge_Gold_Form1;
		sprForm2 = spr_Projectile_BeamCharge_Gold_Form2;
		sprForm3 = spr_Projectile_BeamCharge_Gold_Form3;
		sprForm4 = spr_Projectile_BeamCharge_Gold_Form4;
		break;
	}
	sprIdle = sprForm1;
	scaleEx = scale * 1.25;
	scale = 0;
}
#endregion

#region Event Inherited
event_inherited();
#endregion