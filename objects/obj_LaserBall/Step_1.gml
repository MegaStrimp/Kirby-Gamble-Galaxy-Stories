///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_LaserBall_Normal_Idle;
		sprFace = spr_LaserBall_Normal_Face;
		sprAttack = spr_LaserBall_Normal_Attack;
		sprHurt = spr_LaserBall_Normal_Hurt;
		
		sprAura1Idle = spr_LaserBall_Normal_Aura1_Idle;
		sprAura1Attack = spr_LaserBall_Normal_Aura1_Attack;
		sprAura1Hurt = spr_LaserBall_Normal_Aura1_Hurt;
		sprAura2Idle = spr_LaserBall_Normal_Aura2_Idle;
		sprAura2Attack = spr_LaserBall_Normal_Aura2_Attack;
		sprAura2Hurt = spr_LaserBall_Normal_Aura2_Hurt;
		sprAura3Idle = spr_LaserBall_Normal_Aura3_Idle;
		sprAura3Attack = spr_LaserBall_Normal_Aura3_Attack;
		sprAura3Hurt = spr_LaserBall_Normal_Aura3_Hurt;
		sprAura4Idle = spr_LaserBall_Normal_Aura4_Idle;
		sprAura4Attack = spr_LaserBall_Normal_Aura4_Attack;
		sprAura4Hurt = spr_LaserBall_Normal_Aura4_Hurt;
		break;
		#endregion
	}
	sprAura = sprAura1Idle;
	
	if (state == 1)
	{
		destroyOutsideView = true;
		clampPositionX = false;
		clampPositionY = false;
		offScreenTurning = false;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion