///@description Animation End

#region Stop Animation
image_index = image_number - 1;
#endregion

#region Bomb Throw
if (sprite_index == sprBombThrow1)
{
	var bomb = instance_create_depth(x + (14 * dirX),y - 5,depth,obj_Projectile_Bomb);
	bomb.owner = id;
	bomb.character = 4;
	bomb.sprite_index = spr_DL1_PoppyBrosSr_Bomb;
	bomb.enemy = true;
	bomb.active = true;
	bomb.hurtsEnemy = false;
	bomb.hurtsPlayer = true;
	bomb.destroyAfterHurt = false;
	bomb.canBeInhaled = true;
	bomb.isBoss = true;
	bomb.destroyableByPlayer = true;
	bomb.destroyableByEnemy = false;
	bomb.hasParticle = false;
	bomb.hsp = random_range(2.5,4) * dirX;
	bomb.vsp = -random_range(1.5,4.5);
	bomb.angleSpd = 0;
	bomb.dirX = dirX;
	bomb.scale = 2;
	bomb.image_xscale = bomb.dirX * bomb.scale;
	bomb.image_yscale = bomb.scale;
	sprite_index = sprBombThrow2;
	image_index = 0;
}
#endregion