///@description Execute Attack - Spark Max

function scr_Player_ExecuteAttack_SparkMax()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.sparkMax;
	attackTimer = 60;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprSparkAttack2Ready;
	image_index = 0;
	#endregion
}