///@description Execute Attack - Sleep Normal

function scr_Player_ExecuteAttack_SleepNormal()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.sleepNormal;
	attackTimer = 900;
	isSleeping = true;
	sleepEndTimer = sleepEndTimerMax;
	hsp = 0;
	vsp = 0;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprSleepReady;
	image_index = 0;
	#endregion
}