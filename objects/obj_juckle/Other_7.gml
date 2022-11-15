///@description Animation End

if (sprite_index == sprReload)
{
	attackTimer = attackTimerMax;
	sprite_index = sprIdle;
	image_index = image_number - 1;
}

if (sprite_index == sprAttack)
{
	sprite_index = sprReload;
	image_index = 0;
}

if (sprite_index == sprReady)
{
	switch (state)
	{
		case 1:
		attackDir -= (dirX * 90);
		break;
		
		case 2:
		attackDir = 90 + (dirX * 90);
		if (instance_exists(obj_Player))
		{
			var nearestPlayer = instance_nearest(x,y,obj_Player);
			attackDir = point_direction(x,y,nearestPlayer.x,nearestPlayer.y);
		}
		break;
	}
	
	if (attackDir >= 360) attackDir -= 360;
	if (audio_is_playing(snd_CutterEnemy)) audio_stop_sound(snd_CutterEnemy);
	audio_play_sound(snd_CutterEnemy,0,false);
	var projectile = instance_create_depth(x,y,depth - 1,obj_Projectile_JuckleBlade);
	projectile.paletteIndex = paletteIndex;
	projectile.character = 0;
	projectile.owner = id;
	projectile.hsp = lengthdir_x(projectile.spd,attackDir);
	projectile.vsp = lengthdir_y(projectile.spd,attackDir);
	projectile.image_angle = attackDir;
	projectile.image_xscale = projectile.dirX;
	projectile.enemy = true;
	projectile.destroyableByEnemy = false;
	projectile.hurtsObject = false;
	projectile.hurtsEnemy = false;
	projectile.hurtsPlayer = true;
	sprite_index = sprAttack;
	image_index = 0;
}