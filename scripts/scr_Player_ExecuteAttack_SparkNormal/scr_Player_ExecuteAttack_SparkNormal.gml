///@description Execute Attack - Spark Normal 

function scr_Player_ExecuteAttack_SparkNormal()
{
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.sparkNormal;
	sparkHoldCharge = 0;
	sparkCooldown = 30;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprSparkAttack4;
	image_index = 0;
	#endregion
	
	#region Spark Hitbox
	sparkProj = instance_create_depth(x,y,depth + 1,obj_Projectile_SparkNormal);
	sparkProj.owner = id;
	sparkProj.abilityType = playerAbilities.spark;
	sparkProj.dmg = kirby_SparkNormal_Damage;
	scr_Attack_SetKnockback(sparkProj,kirby_SparkNormal_Strength,kirby_SparkNormal_HitStopAffectSource,kirby_SparkNormal_HitStopAffectPlayer,kirby_SparkNormal_HitStopAffectTarget,kirby_SparkNormal_HitStopLength,kirby_SparkNormal_HitStopShakeStrength);
	sparkProj.enemy = false;
	sparkProj.dirX = dir;
	#endregion
}