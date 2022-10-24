///@description Begin Step

#region Characters
if (setupTimer == 0)
{
    switch (character)
    {
        //Normal

        case 0:
        sprBox = spr_Chuckie_Box;
		sprBoxOpen = spr_Chuckie_BoxOpen;
		sprBoxClose = spr_Chuckie_BoxClose;
		sprIdle = spr_Chuckie_Idle;
		sprHurt = spr_Chuckie_Hurt;
		sprNeck = spr_Chuckie_Neck;
        break;
    }
	switch (image_angle)
	{
		case 90:
		xAngle = 0;
		yAngle = -12;
		break;
		
		case 180:
		xAngle = -12;
		yAngle = 0;
		break;
		
		case 270:
		xAngle = 0;
		yAngle = 12;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion