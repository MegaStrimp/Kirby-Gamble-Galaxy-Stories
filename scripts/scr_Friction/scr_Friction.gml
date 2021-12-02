///@description Horizontal Friction
///@param {real} target Which value to add friction to.
///@param {real} decel Friction value.

function scr_Friction(argument0,argument1)
{
	var target = argument0;
	var decel = argument1;
	
	if (target >= decel) target -= decel;
	if (target <= -decel) target += decel;
	if ((target > -decel) and (target < decel)) target = 0;
	
	return target;
}