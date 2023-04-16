///@description Player - Attack Passive - Spark Hold Charge

function scr_Player_AttackPassive_SparkHoldCharge()
{
	#region Increase Charge
	sparkHoldCharge += 1;
	#endregion
	
	if (sparkHoldCharge < sparkHoldChargeMax)
	{
		if ((!global.cutscene) and (keyAttackReleased))
		{
			#region Not Charged
			if (sparkMaxCharge)
			{
				scr_Player_ExecuteAttack_SparkMax();
			}
			else if (sparkCharge > 15)
			{
				scr_Player_ExecuteAttack_SparkHigh();
			}
			else if (sparkCharge > 9)
			{
				scr_Player_ExecuteAttack_SparkMid();
			}
			else if (sparkCharge > 4)
			{
				scr_Player_ExecuteAttack_SparkLow();
			}
			else
			{
				scr_Player_ExecuteAttack_SparkNone();
			}
			sparkHoldCharge = 0;
			sparkCharge = 0;
			sparkMaxCharge = false;
			#endregion
		}
	}
	else
	{
		#region Fully Charged
		if (!global.cutscene)
		{
			scr_Player_ExecuteAttack_SparkNormal();
		}
		#endregion
	}
}