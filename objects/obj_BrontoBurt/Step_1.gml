///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		if (!joy)
		{
			sprIdle = spr_BrontoBurt_Normal_Idle;
			sprReady = spr_BrontoBurt_Normal_Ready;
			sprWalk = spr_BrontoBurt_Normal_Walk;
			sprFly = spr_BrontoBurt_Normal_Fly;
		}
		else
		{
			sprIdle = spr_BrontoBurt_Normal_Idle_Joy;
			sprReady = spr_BrontoBurt_Normal_Ready_Joy;
			sprWalk = spr_BrontoBurt_Normal_Walk_Joy;
			sprFly = spr_BrontoBurt_Normal_Fly_Joy;
		}
		sprHurtGround = spr_BrontoBurt_Normal_HurtGround;
		sprHurtFly = spr_BrontoBurt_Normal_HurtFly;
		break;
		
		//Alien
		
		case 1:
		sprIdle = spr_BrontoBurt_Alien_Idle;
		sprReady = spr_BrontoBurt_Alien_Ready;
		sprWalk = spr_BrontoBurt_Alien_Walk;
		sprFly = spr_BrontoBurt_Alien_Fly;
		sprHurtGround = spr_BrontoBurt_Alien_HurtGround;
		sprHurtFly = spr_BrontoBurt_Alien_HurtFly;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion