///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_PoppyBrosSr_Normal_Idle;
		sprIdleHat = spr_PoppyBrosSr_Normal_IdleHat;
		sprAttack = spr_PoppyBrosSr_Normal_Attack;
		sprAttackHat = spr_PoppyBrosSr_Normal_AttackHat;
		sprDash = spr_PoppyBrosSr_Normal_Dash;
		sprHand = spr_PoppyBrosSr_Normal_Hand;
		sprHurt = spr_PoppyBrosSr_Normal_Hurt;
		sprDeath = spr_PoppyBrosSr_Normal_Death;
		break;
		#endregion
	}
	walkDirX = 1;
	if ((instance_exists(obj_Player)) and (obj_Player.x < x)) walkDirX = -1;
}
#endregion

#region Event Inherited
event_inherited();
#endregion