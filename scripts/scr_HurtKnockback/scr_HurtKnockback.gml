///@function scr_HurtKnockback(target,source)
///@description Hurt Knockback
///@param {real} target Set it to the target of knockback.

function scr_HurtKnockback(argument0, argument1)
{
	//Variables
	
	var knockbackTarget = argument0;
	var knockbackSource = argument1;
	
	//Vertical Knockback
	
	if (knockbackTarget.hasYKnockback)
	{
		if (knockbackSource.y > knockbackTarget.bbox_top - 4) knockbackTarget.vsp = -.5;
		knockbackTarget.vsp = -3;
	}
	
	//Horizontal Knockback
	
	if (knockbackTarget.hasXKnockback)
	{
		if (knockbackTarget.x >= knockbackSource.x)
		{
			knockbackTarget.hsp = 3;
		}
		else
		{
			knockbackTarget.hsp = -3;
		}
	}
}