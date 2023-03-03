///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdleNormal = spr_Foley_Normal_Idle;
		sprIdleExplodeReady = spr_Foley_Normal_Idle_ExplodeReady;
		sprIdleExplode = spr_Foley_Normal_Idle_Explode;
		sprWalkNormal = spr_Foley_Normal_Walk;
		sprWalkExplodeReady = spr_Foley_Normal_Walk_ExplodeReady;
		sprWalkExplode = spr_Foley_Normal_Walk_Explode;
		sprHurtIdle = spr_Foley_Normal_Hurt_Idle;
		sprHurtAttack = spr_Foley_Normal_Hurt_Attack;
		sprHurt = sprHurtIdle;
		sprLeaf = spr_Foley_Normal_Leaf;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion