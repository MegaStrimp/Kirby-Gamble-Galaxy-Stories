///@description Begin Step

#region Setup Timer
if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		case 0:
		sprBody = spr_HeavyLobster_Normal_Body;
		sprHorns = spr_HeavyLobster_Normal_Horns;
		sprKnee = spr_HeavyLobster_Normal_Knee;
		sprFoot = spr_HeavyLobster_Normal_Foot;
		sprFootAngled = spr_HeavyLobster_Normal_FootAngled;
		sprClaw = spr_HeavyLobster_Normal_Claw;
		sprClawAttack = spr_HeavyLobster_Normal_ClawAttack;
		
		mask_index = spr_HeavyLobster_Normal_Mask;
		break;
	}
	activeLerp = !active;
	
	setupTimer = -1;
}
#endregion