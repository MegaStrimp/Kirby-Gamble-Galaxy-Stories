///@description Execute Attack - Mystic Beam Up

function scr_Player_ExecuteAttack_MysticBeamUp()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.mysticBeamUp;
	attackTimer = 45;
	mysticBeamUpAttackTimer = 0;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprBeamAttack4;
	image_index = 0;
	#endregion
}