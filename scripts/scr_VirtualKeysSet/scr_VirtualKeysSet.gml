///@description Virtual Keys Set

function scr_VirtualKeysSet()
{
	global.virtualKeyUp = virtual_key_add(41,204,24,24,global.finalKeyUp[0]);
	global.virtualKeyLeft = virtual_key_add(18,227,24,24,global.finalKeyLeft[0]);
	global.virtualKeyDown = virtual_key_add(41,227,24,24,global.finalKeyDown[0]);
	global.virtualKeyRight = virtual_key_add(64,227,24,24,global.finalKeyRight[0]);
	
	global.virtualKeySelect = virtual_key_add(165,201,24,24,global.finalKeySelect[0]);
	global.virtualKeyStart = virtual_key_add(282,201,24,24,global.finalKeyStart[0]);
	
	global.virtualKeyJump = virtual_key_add(364,227,24,24,global.finalKeyJump[0]);
	global.virtualKeyAttack = virtual_key_add(397,227,24,24,global.finalKeyAttack[0]);
}