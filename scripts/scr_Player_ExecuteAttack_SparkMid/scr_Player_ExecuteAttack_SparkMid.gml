///@description Execute Attack - Spark Mid

function scr_Player_ExecuteAttack_SparkMid()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.sparkMid;
	attackTimer = 30;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprSparkAttack1Ready;
	image_index = 0;
	#endregion
}