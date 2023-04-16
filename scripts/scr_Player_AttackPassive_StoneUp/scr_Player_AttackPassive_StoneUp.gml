///@description Player - Attack Passive - Stone Up

function scr_Player_AttackPassive_StoneUp()
{
	#region Set Attack Timer
	if ((!global.cutscene) and (keyAttackReleased) and (stoneFistReady)) stoneFistReadyTimer = 0;
	#endregion
}