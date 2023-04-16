///@description Execute Attack - Fire Normal

function scr_Player_ExecuteAttack_FireNormal()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.fireNormal;
	fireNormalAttackTimer = 0;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprFireAttack1;
	image_index = 0;
	#endregion
}