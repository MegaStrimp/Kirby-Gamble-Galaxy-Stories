///@description Main

if (!global.pause)
{
	#region Inhale
	if (place_meeting(x,y,obj_InhaleMask))
	{
		inhalePower += 1;
		if (inhalePower > inhalePowerMax) inhalePower = inhalePowerMax;
		shakeX = 2;
	}
	else
	{
		shakeX = 0;
		inhalePower = 0;
	}
	if (inhalePower >= inhalePowerMax) scr_Object_Inhale(false);
	#endregion
}