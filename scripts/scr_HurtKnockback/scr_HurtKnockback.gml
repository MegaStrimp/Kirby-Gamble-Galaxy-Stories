///@function scr_HurtKnockback(target,source)
///@description Hurt Knockback
///@param {real} target Set it to the target of knockback.
///@param {real} source Set it to the source of knockback.

function scr_HurtKnockback(argument0,argument1)
{
	var tempvar = 0;
	if (argument1.object_index == obj_Enemy) tempvar = argument1.isBoss | argument1.isMiniBoss;
	else tempvar = ((argument1.object_index == obj_Player));
	
	if (tempvar)
	{
		HurtKnockback_Old(argument0, argument1);
		return;
	}
	//holy shit why is this NOT WORKING
	
	var knockbackTarget = argument0;
	var knockbackSource = argument1;
	
	if (knockbackTarget.hasYKnockback and (knockbackSource.hitType != hurt_type.HURT_GROUNDED))
	{
		knockbackTarget.vsp = -(sin((knockbackSource.angle / 180) * pi) * knockbackSource.strength);
	}
	
	if (knockbackTarget.hasXKnockback)
	{
		var neg = 1;
		if (knockbackSource.hsp == 0) neg = sign(knockbackTarget.x - knockbackSource.x);
		else
		{
			neg = sign(knockbackSource.hsp);
		}
		
		knockbackTarget.hsp = dcos(knockbackSource.angle) * knockbackSource.strength * neg;
		knockbackTarget.dirX = neg;
		knockbackTarget.walkDirX = neg;
		knockbackTarget.projectileHitKnockbackDir = neg;
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
	//i love you strimp disregard the first comment
}