/// @description Insert description here
// You can write your code in this editor

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	if (!instance_exists(owner) or owner.hurt)
	{
		instance_destroy();
	}
	
	
	if (place_meeting(x + (6 * dirX), y, obj_Projectile))
	{
		xid = instance_nearest(x + (6 * dirX), y, obj_Projectile);
		if (!xid.enemy and xid.canBeReflected)
		{
			
			if (xid.object_index != obj_Projectile_MirrorPlayer)
			{
				instance_destroy(xid);
			}
			audio_play_sound(snd_AbilityStarBounce, 0, false);
			proj_id = instance_create_depth(x + (5 * dirX), y, depth, obj_Projectile_SimirrorReflection);
			proj_id.dirX = dirX;
			proj_id.hsp = 4;
		}
	}
	
	if (timer)
	{
		timer--;
		if (timer < 4 and timer > 1)
		{
			paletteFlash = 2;
		}
		else
		{
			paletteFlash = 1;
		}
	}
	else
	{
		timer = 7;
	}
}