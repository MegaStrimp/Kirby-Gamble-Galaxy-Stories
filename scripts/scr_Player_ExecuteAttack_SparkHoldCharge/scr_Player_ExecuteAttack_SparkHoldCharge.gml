///@description Execute Attack - Spark Hold Charge

function scr_Player_ExecuteAttack_SparkHoldCharge()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.sparkHoldCharge;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprSparkMaxCharge;
	image_index = 0;
	#endregion
}