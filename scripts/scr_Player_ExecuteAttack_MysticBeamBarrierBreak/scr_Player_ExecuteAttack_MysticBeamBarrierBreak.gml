///@description Execute Attack - Mystic Beam Barrier Break

function scr_Player_ExecuteAttack_MysticBeamBarrierBreak()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.mysticBeamBarrierBreak;
	attackTimer = 30;
	canMysticBeamShield = true;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprMysticBeamAttack2;
	image_index = 0;
	#endregion
}