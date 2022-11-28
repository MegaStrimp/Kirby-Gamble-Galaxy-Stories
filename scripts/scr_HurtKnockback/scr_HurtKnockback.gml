///@function scr_HurtKnockback(target,source)
///@description Hurt Knockback
///@param {real} target Set it to the target of knockback.
///@param {real} source Set it to the source of knockback.

function scr_HurtKnockback(argument0,argument1)
{
	show_debug_message("Start Knockback!")
	if (argument1.object_index != obj_Projectile)
	{
		HurtKnockback_Old(argument0, argument1); // just in case
		return;
	}
	//holy shit why is this NOT WORKING
	
	show_debug_message("Good to go!");
	
	var knockbackTarget = argument0;
	var knockbackSource = argument1;
	
	if (knockbackTarget.hasYKnockback)
	{
		knockbackTarget.vsp = -(sin((knockbackSource.angle / 180) * pi) * knockbackSource.strength);
	}
	
	if (knockbackTarget.hasXKnockback)
	{
		var neg = 1;
		if ((knockbackSource.hsp == 0) and (x < knockbackSource.x)) neg = -1;
		if (knockbackSource.hsp != 0)
		{
			show_debug_message("is this even working");
			neg = sign(knockbackSource.hsp);
			knockbackTarget.projectileHitKnockbackDir = -neg;
		}
		
		
		knockbackTarget.hsp = cos((knockbackSource.angle / 180) * pi) * knockbackSource.strength * neg;
	}
	return;
}

function HurtKnockback_Old(knockbackTarget, knockbackSource)
{
	show_debug_message("Old Knockback!");
	var isKirby = (knockbackSource.object_index == obj_Player);
	
	var newHsp = 3;
	if (isKirby)
	{
		if (knockbackSource.hasInvinCandy)
		{
			newHsp = 6;
			knockbackTarget.hurtRecover = 2;
		}
		knockbackTarget.hurtStopTimer = -1
	}
	var newVsp = -3;
	
	if (knockbackTarget.hasYKnockback)
	{
		if (knockbackSource.y > knockbackTarget.bbox_top - 4) knockbackTarget.vsp = -.5;
		knockbackTarget.vsp = newVsp;
	}
	
	//Horizontal Knockback
	
	if (knockbackTarget.hasXKnockback)
	{
		if (knockbackSource.hsp == 0)
		{
			if (knockbackTarget.x >= knockbackSource.x)
			{
				knockbackTarget.hsp = newHsp;
			}
			else
			{
				knockbackTarget.hsp = -newHsp;
			}
		}
		else
		{
			knockbackTarget.projectileHitKnockbackDir = -sign(knockbackSource.hsp);
			knockbackTarget.hsp = newHsp * sign(knockbackSource.hsp);
		}
	}
	return;
	//fuck you strimp
}