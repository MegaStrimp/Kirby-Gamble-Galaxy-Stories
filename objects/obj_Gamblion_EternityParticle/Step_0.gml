///@description Main

if (!global.pause)
{
	#region Alpha
	image_alpha = lerp(image_alpha,alphaTarget,.02);
	#endregion
	
	#region Angle
	image_angle += angleSpd;
	#endregion
	
	#region Alpha Change Timer
	if (alphaChangeTimer != -1)
	{
		alphaChangeTimer = max(alphaChangeTimer - speedMultFinal,0);
		if (alphaChangeTimer == 0)
		{
			alphaTarget = 0;
			alphaChangeTimer = -1;
		}
	}
	#endregion
}