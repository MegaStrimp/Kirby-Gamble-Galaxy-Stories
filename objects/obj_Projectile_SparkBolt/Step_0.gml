///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Destroy
	
	if (!instance_exists(owner))
	{
		if (instance_exists(obj)) instance_destroy(obj);
		instance_destroy();
	}
	else
	{
		if ((owner.attackNumber != playerAttacks.sparkUp) and (owner.attackNumber != playerAttacks.sparkDown))
		{
			if (instance_exists(obj)) instance_destroy(obj);
			instance_destroy();
		}
		
		//Create Object
		
		if (createObject)
		{
			var yDir = 1;
			var pillarDmg = kirby_SparkDown_Damage;
			obj = instance_create_depth(x,owner.y - 4 + (14 * yDir),depth,obj_Projectile_SparkPillar);
			obj.owner = owner;
			obj.abilityType = playerAbilities.spark;
			if (owner.attackNumber == playerAttacks.sparkUp)
			{
				yDir = -1;
				pillarDmg = kirby_SparkUp_Damage;
				scr_Attack_SetKnockback(obj,kirby_SparkUp_Strength,kirby_SparkUp_HitStopAffectSource,kirby_SparkUp_HitStopAffectPlayer,kirby_SparkUp_HitStopAffectTarget,kirby_SparkUp_HitStopLength,kirby_SparkUp_HitStopShakeStrength);
			}
			else
			{
				scr_Attack_SetKnockback(obj,kirby_SparkDown_Strength,kirby_SparkDown_HitStopAffectSource,kirby_SparkDown_HitStopAffectPlayer,kirby_SparkDown_HitStopAffectTarget,kirby_SparkDown_HitStopLength,kirby_SparkDown_HitStopShakeStrength);
			}
			obj.dmg = pillarDmg;
			obj.image_yscale = yDir;
			obj.dirY = yDir;
			createObject = false;
		}
	}
	
	//Sprite Change Timer
	
	if (spriteChangeTimer > 0)
	{
		spriteChangeTimer -= 1;
	}
	else if (spriteChangeTimer == 0)
	{
		if (sprite_index == sprIdleBlue)
		{
			sprite_index = sprIdleGreen;
		}
		else
		{
			sprite_index = sprIdleBlue;
		}
		spriteChangeTimer = spriteChangeTimerMax;
	}
	
	//Animation
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}