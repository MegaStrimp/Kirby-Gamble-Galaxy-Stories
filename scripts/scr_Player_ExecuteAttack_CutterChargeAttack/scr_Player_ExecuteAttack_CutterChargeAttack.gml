///@description Execute Attack - Cutter Charge Attack

function scr_Player_ExecuteAttack_CutterChargeAttack()
{
	#region Attack Attributes
	attack = true;
	attackable = true;
	attackNumber = playerAttacks.cutterChargeAttack;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprCutterAttack1;
	image_index = 0;
	#endregion
}