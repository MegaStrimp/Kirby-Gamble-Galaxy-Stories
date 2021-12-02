///@description Inputs

function scr_Player_Inputs()
{
	if ((object_index == obj_Player) or (object_index == obj_Projectile_Cutter) or (object_index == obj_Projectile_Beam) or (object_index == obj_Projectile_MysticBeamCharge))
	{
		keyLeft = global.finalKeyLeft[player];
		keyRight = global.finalKeyRight[player];
		keyUp = global.finalKeyUp[player];
		keyDown = global.finalKeyDown[player];
		keyJump = global.finalKeyJump[player];
		keyAttack = global.finalKeyAttack[player];
		keyStart = global.finalKeyStart[player];
		keySelect = global.finalKeySelect[player];
	}
	else
	{
		keyLeft = vk_left;
		keyRight = vk_right;
		keyUp = vk_up;
		keyDown = vk_down;
		keyJump = ord("Z");
		keyAttack = ord("X");
		keyStart = vk_enter;
		keySelect = vk_backspace;
	}
}