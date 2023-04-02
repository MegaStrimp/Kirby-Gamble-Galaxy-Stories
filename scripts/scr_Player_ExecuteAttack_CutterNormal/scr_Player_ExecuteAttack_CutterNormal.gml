///@description Execute Attack - Cutter Normal

function scr_Player_ExecuteAttack_CutterNormal()
{
	#region Attack Attributes
	attack = true;
	attackable = true;
	attackNumber = playerAttacks.cutterNormal;
	cutterAirThrown = true;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprCutterAttack1;
	image_index = 0;
	#endregion
}