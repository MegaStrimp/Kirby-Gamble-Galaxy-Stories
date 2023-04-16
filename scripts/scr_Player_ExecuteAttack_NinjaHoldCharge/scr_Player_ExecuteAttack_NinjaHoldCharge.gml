///@description Execute Attack - Ninja Hold Charge

function scr_Player_ExecuteAttack_NinjaHoldCharge()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.ninjaHoldCharge;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprNinjaCharge;
	image_index = 0;
	#endregion
}