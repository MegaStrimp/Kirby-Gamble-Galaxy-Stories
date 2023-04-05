///@description Execute Attack - Mic Normal
///@param {real} micCount Mic Count

function scr_Player_ExecuteAttack_MicNormal(argument0)
{
	#region Arguments
	var micCount = argument0;
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.micNormal;
	micTimer = micTimerMax;
	attackTimer = micTimerMax;
	invincibleFlash = false;
	global.pause = true;
	#endregion
	
	#region Attack Sprite
	switch (global.micCountP1)
	{
		case 1:
		sprite_index = sprMicAttack1Ready;
		break;
		
		case 2:
		sprite_index = sprMicAttack2Ready;
		break;
		
		case 3:
		sprite_index = sprMicAttack3Ready;
		break;
	}
	#endregion
}