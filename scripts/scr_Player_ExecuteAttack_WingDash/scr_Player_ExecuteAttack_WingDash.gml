///@description Execute Attack - Wing Dash

function scr_Player_ExecuteAttack_WingDash()
{
	#region Attack Attributes
	attack = true;
	attackable = true;
	attackNumber = playerAttacks.wingDash;
	wingDashParticleTimer = wingDashParticleTimerMax;
	invincible = true;
	if (runTurn) dir *= -1;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprWingAttack2Ready;
	image_index = 0;
	#endregion
}