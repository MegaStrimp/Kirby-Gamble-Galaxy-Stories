///@description Main

if (!global.pause)
{
	//Hurt Player

	scr_Enemy_HurtsPlayer(1);
	
	with (obj_Projectile)
	{
		if (place_meeting(x,y,other))
		{
			if ((object_index == obj_SpitStar) and (destroyableByWall) and (owner != other))
			{
				if (particleOnHit)
				{
					var particle = instance_create_depth(x,y,depth,obj_Particle);
					particle.sprite_index = particleOnHitSpr;
					particle.dir = dirX;
					particle.destroyAfterAnimation = true;
				}
			
				if (deathParticlesOnHit)
				{
					var particle = instance_create_depth(x,y,depth,obj_DeathParticles);
					particle.state = deathParticlesOnHitNumber;
					particle.dir = dirX;
				}
			
				if (objectOnHit)
				{
					var proj = instance_create_depth(x,y,depth,objectOnHitObj);
					if (objectOnHitDmg != "none") proj.dmg = objectOnHitDmg;
					if (objectOnHitObj == obj_Projectile_ExplosionMask)
					{
						if (enemy)
						{
							proj.enemy = true;
							proj.hurtsEnemy = false;
							proj.hurtsPlayer = true;
						}
						else
						{
							proj.enemy = false;
							proj.hurtsEnemy = true;
							proj.hurtsPlayer = false;
						}
						if (object_index == obj_Projectile_Bomb)
						{
							if (audio_is_playing(snd_BombExplode)) audio_stop_sound(snd_BombExplode);
							audio_play_sound(snd_BombExplode,0,false);
							if (hasMagma)
							{
								for (var i = 0; i < 3; i++)
								{
									proj = instance_create_depth(x + ((i - 1) * 15),y - 4,depth,obj_Projectile_SmallFire);
									proj.owner = id;
									proj.dmg = 8;
									proj.enemy = false;
									proj.destroyableByWall = false;
									proj.destroyableByEnemy = false;
									proj.destroyableByObject = false;
								}
							}
						}
						else
						{
							if (audio_is_playing(snd_Explosion1)) audio_stop_sound(snd_Explosion1);
							audio_play_sound(snd_Explosion1,0,false);
						}
						var explosion = instance_create_depth(x,y,depth,obj_DeathParticles);
						explosion.state = "explosion1";
					}
				}
				instance_destroy();
			}
		}
	}
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}