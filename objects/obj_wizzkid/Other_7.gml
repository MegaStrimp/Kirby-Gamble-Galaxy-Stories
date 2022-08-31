///@description Animation End

switch (sprite_index)
{
	case sprLaserReady:
	if (audio_is_playing(snd_MysticBeamLaser)) audio_stop_sound(snd_MysticBeamLaser);
	audio_play_sound(snd_MysticBeamLaser,0,false);
	sprite_index = sprLaser;
	image_index = 0;
	attackState = 2;
	laserAttackTimer = 30;
	
	var projectile = instance_create_depth(x + (34 * dirX),y - 6,depth - 1,obj_Projectile_WizzkidLaser);
	projectile.owner = id;
	projectile.dirX = dirX;
	projectile.enemy = true;
	projectile.destroyableByWall = false;
	projectile.destroyableByPlayer = false;
	projectile.destroyableByEnemy = false;
	projectile.destroyableByObject = false;
	projectile.destroyableByProjectile = false;
	projectile.hurtsObject = false;
	projectile.hurtsEnemy = false;
	projectile.hurtsBoss = false;
	projectile.hurtsPlayer = true;
	break;
	
	case sprLaserRelease:
	image_index = image_number - 1;
	attackStopTimer = 0;
	break;
}