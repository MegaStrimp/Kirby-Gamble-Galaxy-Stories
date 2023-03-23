///@description Inputs
///@param {real} Player Value

function scr_Player_Inputs(argument0)
{
	var player = argument0;
	var gpPlayer = global.playerGamepad[player];
	
	keyLeftHold = (keyboard_check(global.finalKeyLeft[player]) or (gamepad_button_check(gpPlayer,gp_padl)) or (global.stickLeftHeld[player]));
	keyLeftPressed = (keyboard_check_pressed(global.finalKeyLeft[player]) or (gamepad_button_check_pressed(gpPlayer,gp_padl)) or (global.stickLeftPressed[player]));
	keyLeftReleased = (keyboard_check_released(global.finalKeyLeft[player]) or (gamepad_button_check_released(gpPlayer,gp_padl)) or (global.stickLeftReleased[player]));
	
	keyRightHold = (keyboard_check(global.finalKeyRight[player]) or (gamepad_button_check(gpPlayer,gp_padr)) or (global.stickRightHeld[player]));
	keyRightPressed = (keyboard_check_pressed(global.finalKeyRight[player]) or (gamepad_button_check_pressed(gpPlayer,gp_padr)) or (global.stickRightPressed[player]));
	keyRightReleased = (keyboard_check_released(global.finalKeyRight[player]) or (gamepad_button_check_released(gpPlayer,gp_padr)) or (global.stickRightReleased[player]));
	
	keyUpHold = (keyboard_check(global.finalKeyUp[player]) or (gamepad_button_check(gpPlayer,gp_padu)) or (global.stickUpHeld[player]));
	keyUpPressed = (keyboard_check_pressed(global.finalKeyUp[player]) or (gamepad_button_check_pressed(gpPlayer,gp_padu)) or (global.stickUpPressed[player]));
	keyUpReleased = (keyboard_check_released(global.finalKeyUp[player]) or (gamepad_button_check_released(gpPlayer,gp_padu)) or (global.stickUpReleased[player]));
	
	keyDownHold = (keyboard_check(global.finalKeyDown[player]) or (gamepad_button_check(gpPlayer,gp_padd)) or (global.stickDownHeld[player]));
	keyDownPressed = (keyboard_check_pressed(global.finalKeyDown[player]) or (gamepad_button_check_pressed(gpPlayer,gp_padd)) or (global.stickDownPressed[player]));
	keyDownReleased = (keyboard_check_released(global.finalKeyDown[player]) or (gamepad_button_check_released(gpPlayer,gp_padd)) or (global.stickDownReleased[player]));
	
	var gamepadJump = gp_face2;
	if (global.playerGamepadControlType[player] == 1) gamepadJump = gp_face1;
	keyJumpHold = (keyboard_check(global.finalKeyJump[player]) or (gamepad_button_check(gpPlayer,gamepadJump)));
	keyJumpPressed = (keyboard_check_pressed(global.finalKeyJump[player]) or (gamepad_button_check_pressed(gpPlayer,gamepadJump)));
	keyJumpReleased = (keyboard_check_released(global.finalKeyJump[player]) or (gamepad_button_check_released(gpPlayer,gamepadJump)));
	
	var gamepadAttack = gp_face1;
	if (global.playerGamepadControlType[player] == 1) gamepadAttack = gp_face3;
	keyAttackHold = (keyboard_check(global.finalKeyAttack[player]) or (gamepad_button_check(gpPlayer,gamepadAttack)));
	keyAttackPressed = (keyboard_check_pressed(global.finalKeyAttack[player]) or (gamepad_button_check_pressed(gpPlayer,gamepadAttack)));
	keyAttackReleased = (keyboard_check_released(global.finalKeyAttack[player]) or (gamepad_button_check_released(gpPlayer,gamepadAttack)));
	
	keyStartHold = (keyboard_check(global.finalKeyStart[player]) or (gamepad_button_check(gpPlayer,gp_start)));
	keyStartPressed = (keyboard_check_pressed(global.finalKeyStart[player]) or (gamepad_button_check_pressed(gpPlayer,gp_start)));
	keyStartReleased = (keyboard_check_released(global.finalKeyStart[player]) or (gamepad_button_check_released(gpPlayer,gp_start)));
	
	keySelectHold = (keyboard_check(global.finalKeySelect[player]) or (gamepad_button_check(gpPlayer,gp_select)));
	keySelectPressed = (keyboard_check_pressed(global.finalKeySelect[player]) or (gamepad_button_check_pressed(gpPlayer,gp_select)));
	keySelectReleased = (keyboard_check_released(global.finalKeySelect[player]) or (gamepad_button_check_released(gpPlayer,gp_select)));
}