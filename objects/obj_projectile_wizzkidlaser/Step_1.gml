///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprStart = spr_Wizzkid_Normal_LaserProjStart;
		sprLoop = spr_Wizzkid_Normal_LaserProjLoop;
		sprParticle = spr_Wizzkid_Normal_LaserProjParticle;
		break;
	}
	sprite_index = sprStart;
	image_xscale = (laserWidth / (sprite_get_width(sprStart))) * dirX;
}
#endregion

#region Event Inherited
event_inherited();
#endregion