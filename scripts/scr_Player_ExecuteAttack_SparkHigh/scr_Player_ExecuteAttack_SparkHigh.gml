///@description Execute Attack - Spark High

function scr_Player_ExecuteAttack_SparkHigh()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.sparkHigh;
	attackTimer = 45;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprSparkAttack2Ready;
	image_index = 0;
	#endregion
}