///@description Attack - Set Knockback
///@param {real} target Target Object
///@param {real} strength Strength
///@param {real} hitStopAffectSource Hit Stop Affect Source
///@param {real} hitStopAffectPlayer Hit Stop Affect Player
///@param {real} hitStopAffectTarget Hit Stop Affect Target
///@param {real} hitStopLength Hit Stop Length
///@param {real} hitStopShakeStrength Hit Stop Shake Strength

function scr_Attack_SetKnockback(argument0,argument1,argument2,argument3,argument4,argument5,argument6)
{
	var target = argument0;
	var strength = argument1;
	var hitStopAffectSource = argument2;
	var hitStopAffectPlayer = argument3;
	var hitStopAffectTarget = argument4;
	var hitStopLength = argument5;
	var hitStopShakeStrength = argument6;
	
	target.strength = strength;
	target.hitStop.affectSrc = hitStopAffectSource;
	target.hitStop.affectMe = hitStopAffectPlayer;
	target.hitStop.affectTar = hitStopAffectTarget;
	target.hitStop.len = hitStopLength;
	target.hitStop.shakeStr = hitStopShakeStrength;
}