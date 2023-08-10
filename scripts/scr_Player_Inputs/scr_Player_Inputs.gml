///@description Inputs
///@param {real} Player Value

function scr_Player_Inputs(argument0)
{
	var player = argument0;
	
	keyLeftHold = input_check("left");
	keyLeftPressed = input_check_pressed("left");
	keyLeftReleased = input_check_released("left");
	
	keyRightHold = input_check("right");
	keyRightPressed = input_check_pressed("right");
	keyRightReleased = input_check_released("right");
	
	keyUpHold = input_check("up");
	keyUpPressed = input_check_pressed("up");
	keyUpReleased = input_check_released("up");
	
	keyDownHold = input_check("down");
	keyDownPressed = input_check_pressed("down");
	keyDownReleased = input_check_released("down");
	
	var gamepadJump = gp_face2;
	if (global.playerGamepadControlType[player] == 1) gamepadJump = gp_face1;
	keyJumpHold = input_check("A");
	keyJumpPressed = input_check_pressed("A");
	keyJumpReleased = input_check_released("A");
	
	var gamepadAttack = gp_face1;
	if (global.playerGamepadControlType[player] == 1) gamepadAttack = gp_face3;
	keyAttackHold = input_check("B");
	keyAttackPressed = input_check_pressed("B");
	keyAttackReleased = input_check_released("B");
	
	keyStartHold = input_check("start");
	keyStartPressed = input_check_pressed("start");
	keyStartReleased = input_check_released("start");
	
	keySelectHold = input_check("select");
	keySelectPressed = input_check_pressed("select");
	keySelectReleased = input_check_released("select");
}