///@description Main

//Event Inherited

event_inherited();

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	#region Variables
	var sprIdleFinal = sprIdle;
	var sprReadyFinal = sprReady;
	var sprFirebarFinal = sprFirebar;
	var sprAttackFinal = sprAttack;
	var sprHurtFinal = sprHurt;
	if (!hasTop)
	{
		sprIdleFinal = sprToplessIdle;
		sprReadyFinal = sprToplessReady;
		sprFirebarFinal = sprToplessFirebar;
		sprAttackFinal = sprToplessAttack;
		sprHurtFinal = sprToplessHurt;
	}
	#endregion
	
	#region Attack Timer
	if !((stopOutsideScreen) and (scr_OutsideView()))
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		switch (attackState)
		{
			case 0:
			nearestPlayer = instance_nearest(x,y,obj_Player);
			attackState += 1;
			attackTimer = 0;
			break;
			
			case 1:
			attackState += 1;
			attackTimer = 60;
			
			if (nearestPlayer == -1)
			{
				attackTimer = attackTimerMax;
				attackState = 0;
				nearestPlayer = -1;
			}
			
			if (distance_to_object(nearestPlayer) <= 120)
			{
				attackNumber = enemyAttacks.mysticBlock_firebar;
				sprite_index = sprReadyFinal;
				image_index = 0;
			}
			else if (distance_to_object(nearestPlayer) <= 480)
			{
				attackNumber = enemyAttacks.mysticBlock_shield;
				sprite_index = sprReadyFinal;
				image_index = 0;
			}
			else
			{
				attackTimer = attackTimerMax;
				attackState = 0;
				nearestPlayer = -1;
			}
			break;
			
			case 2:
			switch (attackNumber)
			{
				case enemyAttacks.mysticBlock_firebar:
				if (audio_is_playing(snd_EnemyBeam)) audio_stop_sound(snd_EnemyBeam);
				audio_play_sound(snd_EnemyBeam,0,false);
				sprite_index = sprFirebarFinal;
				image_index = 0;
				attackState = 9;
				attackTimer = 120;
				
				for (var i = 0; i < maxBeams; i++)
				{
					var projBeam = instance_create_depth(x + ((sprite_get_width(sprite_index) / 2) * image_xscale),y + ((sprite_get_height(sprite_index) / 2) * image_yscale),depth,obj_Projectile_Beam);
					projBeam.owner = id;
					switch (state)
					{
						//Clockwise
						
						case 0:
						projBeam.spd = -firebarSpd;
						projBeam.angle = 50;
						break;
						
						//Counter-Clockwise
						
						case 1:
						projBeam.spd = firebarSpd;
						projBeam.angle = 130;
						break;
					}
					if (i % 2 == 0)
					{
						projBeam.image_index = 1;
						projBeam.visible = false;
					}
					projBeam.orbit = 25 + (i * 15);
					projBeam.centerX = ((sprite_get_width(sprite_index) / 2) * image_xscale);
					projBeam.centerY = ((sprite_get_height(sprite_index) / 2) * image_yscale);
					projBeam.owner = id;
					projBeam.enemy = true;
					projBeam.hurtsObject = false;
					projBeam.hurtsEnemy = false;
					projBeam.hurtsPlayer = true;
					projBeam.destroyableByWall = false;
					projBeam.destroyableByEnemy = false;
					projBeam.destroyableByObject = false;
					projBeam.hasLimit = false;
					projBeam.particleTimer = -1;
					projBeam.character = 3;
					projBeam.sprIdle = spr_Projectile_MysticBeam_Enemy;
					projBeam.trailSpr = spr_Projectile_MysticBeam_Enemy_Trail;
					projBeam.trailTimer = 0;
					projBeam.destroyTimer = 120;
				}
				break;
			
				case enemyAttacks.mysticBlock_shield:
				sprite_index = sprAttackFinal;
				image_index = 0;
				attackState += 1;
				break;
			}
			break;
			
			case 3:
			if (audio_is_playing(snd_MysticBeam)) audio_stop_sound(snd_MysticBeam);
			audio_play_sound(snd_MysticBeam,0,false);
			
			var projAngle = currentBeams * (360 / maxBeams);
			var projBeam = instance_create_depth(x + (12 * image_xscale) + (lengthdir_x(18,projAngle)),y + (12 * image_xscale) + (lengthdir_y(18,projAngle)),depth - 1,obj_Projectile_MysticBlock);
			projBeam.owner = id;
			if (currentBeams % 2 == 0) projBeam.image_index = 1;
			projBeam.owner = id;
			projBeam.enemy = true;
			projBeam.hurtsObject = false;
			projBeam.hurtsEnemy = false;
			projBeam.hurtsPlayer = true;
			projBeam.destroyableByWall = false;
			projBeam.destroyableByEnemy = false;
			projBeam.destroyableByObject = false;
			projBeam.destroyableByProjectile = true;
			projBeam.destroyOutsideRoom = true;
			currentBeams += 1;
			
			if (currentBeams >= maxBeams)
			{
				attackState += 1;
				attackTimer = 60;
			}
			else
			{
				attackTimer = 15;
			}
			break;
			
			case 4:
			if (audio_is_playing(snd_MysticBeamLaunch)) audio_stop_sound(snd_MysticBeamLaunch);
			audio_play_sound(snd_MysticBeamLaunch,0,false);
			nearestPlayer = instance_nearest(x,y,obj_Player);
			with (obj_Projectile_MysticBlock)
			{
				if ((owner == other.id) and (!active))
				{
					active = true;
					if (other.nearestPlayer == -1)
					{
						instance_destroy();
					}
					else
					{
						var playerDir = point_direction(x,y,other.nearestPlayer.x,other.nearestPlayer.y);
						hsp = lengthdir_x(3,playerDir);
						vsp = lengthdir_y(3,playerDir);
					}
				}
			}
			attackState = 9;
			attackTimer = 0;
			break;
			
			case 9:
			attackTimer = attackTimerMax;
			attackState = 0;
			nearestPlayer = -1;
			currentBeams = 0;
			break;
		}
	}
	#endregion
	
	//Animation
	
	image_speed = 1;
	
	if (hurt)
	{
		sprite_index = sprHurtFinal;
	}
	else
	{
		if (attackState == 0) sprite_index = sprIdleFinal;
	}
}
else
{
	image_speed = 0;
}