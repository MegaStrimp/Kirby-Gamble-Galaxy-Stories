///@function scr_HurtKnockback(target,source)
///@description Hurt Knockback
///@param {real} target Set it to the target of knockback.
///@param {real} source Set it to the source of knockback.

function scr_HurtKnockback(argument0,argument1)
{
	show_debug_message("Start Knockback!")
	if (argument1.object_index == obj_Player)
	{
		HurtKnockback_Old(argument0, argument1);
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
	if (knockbackTarget.hasYKnockback)
	{
		if (knockbackSource.y > knockbackTarget.bbox_top - 4) knockbackTarget.vsp = -.5;
		knockbackTarget.vsp = -3;
	}
	
	//Horizontal Knockback
	
	if (knockbackTarget.hasXKnockback)
	{
		if (knockbackSource.hsp == 0)
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
		else
		{
			knockbackTarget.projectileHitKnockbackDir = -sign(knockbackSource.hsp);
		}
	}
	return;
	
	//fuck you strimp
}