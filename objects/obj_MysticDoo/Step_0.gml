///@description Main

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_MysticDoo_Normal_Idle;
		sprFloatUp = spr_MysticDoo_Normal_FloatUp;
		sprFloatTrans = spr_MysticDoo_Normal_FloatTrans;
		sprFloatDown = spr_MysticDoo_Normal_FloatDown;
		sprCharge = spr_MysticDoo_Normal_Charge;
		sprAttack = spr_MysticDoo_Normal_Attack;
		sprWave = spr_MysticDoo_Normal_Wave;
		sprWalk = spr_MysticDoo_Normal_Walk;
		sprWalkIdle = spr_MysticDoo_Normal_WalkIdle;
		sprHurt = spr_MysticDoo_Normal_Hurt;
		break;
		#endregion
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	#region Get Inhaled
	if (!parasol) scr_Object_Inhale(enemy);
	#endregion
	
	#region Hurt Player
	scr_Enemy_HurtsPlayer(dmg);
	#endregion
	
	#region Gravity
	hasGravity = hurt;
	#endregion
	
	#region Friction
	hsp = scr_Friction(hsp,decel);
	#endregion
	
	#region Trail
	/*var afterimage = instance_create_depth(x,y,depth + 1,obj_Afterimage);
	afterimage.image_speed = 0;
	afterimage.sprite_index = sprite_index;
	afterimage.image_index = image_index;
	afterimage.image_xscale = image_xscale;
	afterimage.image_alpha = .3;
	afterimage.paletteIndex = spr_MysticDoo_Normal_Palette_TrailPurple;
	afterimage.destroyTimer = 4;*/
	#endregion
	
	#region States
	if ((state != 1) and (hp <= 4))
	{
		with (obj_Projectile_Beam) if (owner == other.id) instance_destroy();
		state = 1;
	}
	
	switch (state)
	{
		#region Floating
		case 0:
		if (!hurt)
		{
			scr_AI_VerticalWaveMovement(false);
			if (!attack) scr_AI_HorizontalStraightMovement(true,true);
		}
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (attack)
			{
				if (attackState == 1)
				{
					sprite_index = sprCharge;
				}
				else if (attackState == 2)
				{
					sprite_index = sprAttack;
				}
			}
			else
			{
				if (abs(vsp) <= (jumpspeed / 4))
				{
					sprite_index = sprFloatTrans;
				}
				else if (sign(vsp) == -1)
				{
					sprite_index = sprFloatUp;
				}
				else if (sign(vsp) == 1)
				{
					sprite_index = sprFloatDown;
				}
				
			}
		}
		break;
		#endregion
		
		#region Walking
		case 1:
		attack = false;
		attackState = 0;
		attackTimer = -1;
		hasGravity = true;
		
		var nearestPlayer = instance_nearest(x,y,obj_Player);
		dirX = 1;
		if (nearestPlayer.x < x) dirX = -1;
		
		if (slideTimer == -1) slideTimer = slideTimerMax;
		
		image_speed = 1;
		sprHurt = -1;
		if (hsp == 0)
		{
			sprite_index = sprWalkIdle;
		}
		else
		{
			sprite_index = sprWalk;
		}
		break;
		#endregion
	}
	#endregion
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		if (!attack)
		{
			attack = true;
			attackTimer = 30;
		}
		else
		{
			if (attackState == 0)
			{
				if (audio_is_playing(snd_MysticBeam)) audio_stop_sound(snd_MysticBeam);
				audio_play_sound(snd_MysticBeam,0,false);
				attackState = 1;
				attackTimer = floor(attackTimerMax / 2);
				for (var i = 0; i < 4; i++)
				{
					var projBeam = instance_create_depth(x,y,depth,obj_Projectile_Beam);
					projBeam.owner = id;
					if (i % 2 == 0) projBeam.image_index = 1;
					projBeam.movespeed = 4;
					projBeam.jumpspeed = 0;
			        projBeam.angle = ((90 * i) * -dirX);
					projBeam.spd = 2 * dirX;
					projBeam.dir = dirX;
					projBeam.orbit = 0;
					projBeam.orbitMax = orbitMax;
					projBeam.owner = id;
					projBeam.state = 2;
					projBeam.enemy = true;
					projBeam.hurtsObject = false;
					projBeam.hurtsEnemy = false;
					projBeam.hurtsPlayer = true;
					projBeam.destroyableByWall = false;
					projBeam.destroyableByEnemy = false;
					projBeam.destroyableByObject = false;
					projBeam.destroyOutsideRoom = true;
					projBeam.character = 3;
					projBeam.sprIdle = spr_Projectile_MysticBeam_Enemy;
					projBeam.trailSpr = spr_Projectile_MysticBeam_Enemy_Trail;
					projBeam.trailTimer = 0;
				}
			}
			else if (attackState == 1)
			{
				if (audio_is_playing(snd_MysticBeamLaunch)) audio_stop_sound(snd_MysticBeamLaunch);
				audio_play_sound(snd_MysticBeamLaunch,0,false);
				image_index = 0;
				attackState = 2;
				attackTimer = floor(attackTimerMax / 3);
			}
			else if (attackState == 2)
			{
				attack = false;
				attackState = 0;
				attackTimer = attackTimerMax;
			}
		}
	}
	
	if ((!hurt) and (place_meeting(x,y + 1,collisionY)))
	{
		if (slideTimer > 0)
		{
			slideTimer -= 1;
		}
		else if (slideTimer == 0)
		{
			var snd = choose(snd_Flesh1,snd_Flesh2,snd_Flesh3);
			if (audio_is_playing(snd)) audio_stop_sound(snd);
			audio_play_sound(snd,0,false);
			hsp = movespeed * dirX;
			slideTimer = -1;
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}