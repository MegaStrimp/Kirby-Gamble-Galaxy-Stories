///@description Execute Attack - Scan Normal

function scr_Player_ExecuteAttack_ScanNormal()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.scanNormal;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprScanReady;
	image_index = 0;
	#endregion
}