/// @description Main

if (!global.pause)
{
	#region Attack Timer
	if (attackTimer != -1)
	{
		attackTimer = max(attackTimer - speedMultFinal,0);
		if (attackTimer == 0)
		{
			fire = instance_create_depth(x + 12,y - 4,depth - 1,obj_FirePuffBlock_Fire);
			fire.owner = id;
			attackTimer = attackTimerMax;
		}
	}
	#endregion
}