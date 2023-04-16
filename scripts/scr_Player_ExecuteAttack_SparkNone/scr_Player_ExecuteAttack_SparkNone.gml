///@description Execute Attack - Spark None

function scr_Player_ExecuteAttack_SparkNone()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.sparkNone;
	attackTimer = 7;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprSparkAttack1Ready;
	image_index = 0;
	#endregion
}