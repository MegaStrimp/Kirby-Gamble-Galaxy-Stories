///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Chuckie_Idle;
		sprNeck = spr_Chuckie_Neck;
		sprHurt = spr_Chuckie_Hurt;
		break;
	}
	
	if (followedPath != -1) path = path_start(followedPath,spd,path_action_stop,0);
}
#endregion

#region Event Inherited
event_inherited();
#endregion

#region Destroy
if (!instance_exists(owner)) instance_destroy();
#endregion