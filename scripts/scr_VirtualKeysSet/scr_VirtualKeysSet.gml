///@description Virtual Keys Set

function scr_VirtualKeysSet()
{
	global.virtualKeyUp = virtual_key_add(53,162,26,37,global.finalKeyUp[0]);
	global.virtualKeyLeft = virtual_key_add(16,199,37,26,global.finalKeyLeft[0]);
	global.virtualKeyDown = virtual_key_add(53,225,26,37,global.finalKeyDown[0]);
	global.virtualKeyRight = virtual_key_add(79,199,37,26,global.finalKeyRight[0]);
	
	global.virtualKeySelect = virtual_key_add(186,236,26,26,global.finalKeySelect[0]);
	global.virtualKeyStart = virtual_key_add(230,236,26,26,global.finalKeyStart[0]);
	
	global.virtualKeyJump = virtual_key_add(326,195,65,65,global.finalKeyJump[0]);
	global.virtualKeyAttack = virtual_key_add(399,195,65,65,global.finalKeyAttack[0]);
}