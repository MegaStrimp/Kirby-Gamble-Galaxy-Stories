///@description Inputs
///@param {real} Player Value

function scr_Player_Inputs(argument0)
{
	var player = argument0;
	keyLeftHold = keyboard_check(global.finalKeyLeft[player]);
	keyLeftPressed = keyboard_check_pressed(global.finalKeyLeft[player]);
	keyLeftReleased = keyboard_check_released(global.finalKeyLeft[player]);
	
	keyRightHold = keyboard_check(global.finalKeyRight[player]);
	keyRightPressed = keyboard_check_pressed(global.finalKeyRight[player]);
	keyRightReleased = keyboard_check_released(global.finalKeyRight[player]);
	
	keyUpHold = keyboard_check(global.finalKeyUp[player]);
	keyUpPressed = keyboard_check_pressed(global.finalKeyUp[player]);
	keyUpReleased = keyboard_check_released(global.finalKeyUp[player]);
	
	keyDownHold = keyboard_check(global.finalKeyDown[player]);
	keyDownPressed = keyboard_check_pressed(global.finalKeyDown[player]);
	keyDownReleased = keyboard_check_released(global.finalKeyDown[player]);
	
	keyJumpHold = keyboard_check(global.finalKeyJump[player]);
	keyJumpPressed = keyboard_check_pressed(global.finalKeyJump[player]);
	keyJumpReleased = keyboard_check_released(global.finalKeyJump[player]);
	
	keyAttackHold = keyboard_check(global.finalKeyAttack[player]);
	keyAttackPressed = keyboard_check_pressed(global.finalKeyAttack[player]);
	keyAttackReleased = keyboard_check_released(global.finalKeyAttack[player]);
	
	keyStartHold = keyboard_check(global.finalKeyStart[player]);
	keyStartPressed = keyboard_check_pressed(global.finalKeyStart[player]);
	keyStartReleased = keyboard_check_released(global.finalKeyStart[player]);
	
	keySelectHold = keyboard_check(global.finalKeySelect[player]);
	keySelectPressed = keyboard_check_pressed(global.finalKeySelect[player]);
	keySelectReleased = keyboard_check_released(global.finalKeySelect[player]);
}