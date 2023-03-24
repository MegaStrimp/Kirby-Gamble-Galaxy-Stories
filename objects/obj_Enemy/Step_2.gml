///@description End Step

if ((parentPause) and (hurtStopTimer < 1))
{
	#region Collision
	if ((setupTimer == 0) and (groundFailsafe))
	{
		with (obj_ParentWall)
		{
			if (owner != other.id)
			{
				while (place_meeting(x,y,other))
				{
					other.y -= 1;
				}
			}
		}
	}
	
	scr_Enemy_Collision();
	#endregion
}