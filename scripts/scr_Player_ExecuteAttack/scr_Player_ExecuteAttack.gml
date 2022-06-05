///@description Player - Execute Attack
///@param {real} Attack Number

function scr_Player_ExecuteAttack(argument0)
{
	var attackNumber = argument0;
	
	switch (attackNumber)
	{
		case playerAttacks.beamNormal:
		scr_Player_ExecuteAttack_BeamNormal();
		break;
	}
}