///@description Execute Attack - Mirror Normal

function scr_Player_ExecuteAttack_MirrorNormal()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.mirrorNormal;
	mirrorHold = true;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprMirrorAttack2;
	image_index = 0;
	#endregion
}