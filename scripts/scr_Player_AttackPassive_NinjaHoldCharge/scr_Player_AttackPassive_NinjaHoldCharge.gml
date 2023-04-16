///@description Player - Attack Passive - Ninja Hold Charge

function scr_Player_AttackPassive_NinjaHoldCharge()
{
	if (!global.cutscene)
	{
		#region Increase Charge
		ninjaHoldCharge += 1;
		#endregion
		
		if (ninjaHoldCharge < ninjaHoldChargeMax)
		{
			if (keyAttackReleased)
			{
				#region Not Charged
				ninjaHoldCharge = 0;
				
				scr_Player_ExecuteAttack_NinjaNormal();
				#endregion
			}
		}
		else
		{
			#region Fully Charged
			ninjaHoldCharge = 0;
			
			scr_Player_ExecuteAttack_NinjaSlash();
			#endregion
		}
	}
}