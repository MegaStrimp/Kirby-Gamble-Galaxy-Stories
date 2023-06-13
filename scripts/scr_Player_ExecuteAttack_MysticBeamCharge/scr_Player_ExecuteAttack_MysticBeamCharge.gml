///@description Execute Attack - Mystic Beam Charge

function scr_Player_ExecuteAttack_MysticBeamCharge()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.mysticBeamCharge;
	attackTimer = -1;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprBeamCharge;
	image_index = 0;
	#endregion
}