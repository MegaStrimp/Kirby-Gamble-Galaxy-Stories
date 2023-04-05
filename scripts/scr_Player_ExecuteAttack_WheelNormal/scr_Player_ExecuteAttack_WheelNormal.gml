///@description Execute Attack - Wheel Normal

function scr_Player_ExecuteAttack_WheelNormal()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.wheelNormal;
	state = playerStates.wheelNormal;
	if (runTurn) dir *= -1;
	wheelDir = dir;
	hsp = 0;
	wheelReadyTimer = 15;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprWingAttack1;
	image_index = 0;
	#endregion
}