///@description Execute Attack - Spark Low

function scr_Player_ExecuteAttack_SparkLow()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.sparkLow;
	attackTimer = 20;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprSparkAttack1Ready;
	image_index = 0;
	#endregion
}