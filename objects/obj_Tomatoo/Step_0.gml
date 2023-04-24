///@description Main

//Event Inherited

event_inherited();

#region Friction
if ((!childPauseHard) and ((grounded) or (!hasYCollision))) hsp = scr_Friction(hsp,decel);
#endregion

//Hurt Player

scr_Enemy_HurtsPlayer(dmg);

if (!childPause)
{
	//Variables
	
	var nearestPlayer = -1;
	nearestPlayer = instance_nearest(x,y,obj_Player);
	
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//States
	
	switch (state)
	{
		//Normal
		
		case 0:
		hsp = movespeedFin;
		
		image_speed = 1;
		
		if (hurt)
		{
			image_speed = 0;
		}
		
		if (grounded)
		{
			if (walkDuck) or (duck)
			{
				if (heavyDuck)
				{
					sprite_index = sprHeavyDuck;
				}
				else
				{
					sprite_index = sprDuck;
				}
			}
			else
			{
				sprite_index = sprIdle;
			}
		}
		else
		{
			if ((heavyDuck) and (nearestPlayer != -1)) x = lerp(x,nearestPlayer.x,.025);
			if (vsp > 0)
			{
				if (sprite_index != sprFall) image_index = 0;
				sprite_index = sprFall;
			}
			else if (vsp < 0)
			{
				if (sprite_index != sprJump) image_index = 0;
				sprite_index = sprJump;
			}
		}
		break;
	}
	
	//Walk Duck
	
	if ((hasYCollision) and (!walkDuck) and (place_meeting(x,y + (1 + vspFinal),collisionY)) and (vsp > 1) and (!attack))
	{
		if (heavyDuck)
		{
			for (var i = 0; i < 4; i++)
			{
				var proj = instance_create_depth(x,y,depth - 1,obj_Projectile_Tomatoo);
				proj.owner = id;
				proj.enemy = true;
				proj.abilityType = playerAbilities.none;
				proj.dmg = tomatoo_Shot_Damage;
				scr_Attack_SetKnockback(proj,tomatoo_Shot_Strength,tomatoo_Shot_HitStopAffectSource,tomatoo_Shot_HitStopAffectPlayer,tomatoo_Shot_HitStopAffectTarget,tomatoo_Shot_HitStopLength,tomatoo_Shot_HitStopShakeStrength);
				proj.destroyableByPlayer = true;
				proj.destroyableByEnemy = false;
				proj.hurtsObject = false;
				proj.hurtsEnemy = false;
				proj.hurtsPlayer = true;
				var bdir = (150 - (40 * i));
				if (bdir >= 360) bdir -= 360;
				if (bdir < 0) bdir += 360;
				proj.hsp = lengthdir_x(2,bdir);
				proj.vsp = lengthdir_y(4,bdir);
				proj.paletteIndex = paletteIndex;
			}
		}
		movespeedFin = 0;
		walkDuck = true;
		walkDuckTimer = walkDuckTimerMax * (1 + heavyDuck);
		scaleExX = .25;
		scaleExY = -.25;
		var squishSound = choose(snd_TomatooSquish1,snd_TomatooSquish2,snd_TomatooSquish3);
		if (audio_is_playing(squishSound)) audio_stop_sound(squishSound);
		audio_play_sound(squishSound,0,false);
		var parDirection = irandom_range(0,359);
		var parScaleDir = 1;
		if ((parDirection > 90) and (parDirection <= 270))
		{
			parScaleDir = -1;
		}
		var parSquish = instance_create_depth(x,y,depth + 1,obj_Particle);
		parSquish.sprite_index = spr_Particle_SmallStar;
		parSquish.destroyTimer = 30;
		parSquish.spdBuiltIn = 6;
		parSquish.fricSpd = .6;
		parSquish.direction = parDirection;
		parSquish.dir = parScaleDir;
	}
	
	//Walk Duck Timer
	
	if (walkDuckTimer > 0)
	{
		walkDuckTimer -= 1;
	}
	else if (walkDuckTimer == 0)
	{
		walkDuck = false;
		heavyDuck = false;
		walkDuckTimer = -1;
	}
	
	//Jump Timer
	
	if (!parasol)
	{
		if (jumpTimer > 0)
		{
			jumpTimer -= 1;
		}
		else if (jumpTimer == 0)
		{
			if ((!hurt) and (grounded) and (!place_meeting(x,y - jumpspeed,collisionY)))
			{
				movespeedFin = 0;
				switch (jumpState)
				{
					case 0:
					jumpCount += 1;
					if (jumpCount >= jumpCountMax)
					{
						jumpCount = 0;
						heavyDuck = true;
					}
					jump = true;
					duck = true;
					jumpState += 1;
					jumpTimer = 30 + (heavyDuck * 15);
					break;
				
					case 1:
					var sound = snd_EnemyJump2;
					if (heavyDuck) sound = snd_TomatooHeavyJump;
					if (audio_is_playing(sound)) audio_stop_sound(sound);
					audio_play_sound(sound,0,false);
					if ((!heavyDuck) and (nearestPlayer != -1))
					{
						if (nearestPlayer.x > x + playerOffset)
						{
							movespeedFin = movespeed;
						}
						else if (nearestPlayer.x < x - playerOffset)
						{
							movespeedFin = -movespeed;
						}
					}
					var parJump = instance_create_depth(x - (7 * dirX),y + 5,depth + 1,obj_Particle);
					parJump.sprite_index = spr_Particle_Jump;
					parJump.destroyAfterAnimation = true;
					parJump.spdBuiltIn = 6;
					parJump.fricSpd = .6;
					parJump.direction = 90 + (20 * dirX);
					scaleExX = -.25;
					scaleExY = .25;
					vsp = -((jumpspeed + random_range(-1,1)) * (1 + (heavyDuck * 2)));
					jump = false;
					duck = false;
					jumpState = 0;
					jumpTimer = jumpTimerMax;
					break;
				}
			}
			else
			{
				jumpState = 0;
				jump = false;
				duck = false;
				jumpTimer = jumpTimerMax;
			}
		}
	}
}
else
{
	image_speed = 0;
}