///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Yolky_Normal_Idle;
		sprShoot = spr_Yolky_Normal_Shoot;
		sprHurt = -1;
		break;
	}
	if (state == 1)
	{
		attackTimer = 0;
		attackCountMax = -1;
	}
}

//Event Inherited

event_inherited();

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	if (!hurt)
	{
		//Attack Timer
		
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			attack = true;
			shootTimer = 0;
			attackTimer = -1;
		}
		
		//Shoot Timer
		
		if (shootTimer > 0)
		{
			shootTimer -= 1;
		}
		else if (shootTimer == 0)
		{
			animDir += 1;
			if (animDir > 1) animDir -= 2;
			shootTimer = shootTimerMax;
			if (animDir == 1)
			{
				if (audio_is_playing(snd_TomatooSquish1)) audio_stop_sound(snd_TomatooSquish1);
				audio_play_sound(snd_TomatooSquish1,0,false);
				for (var i = 0; i < projCount; i++)
				{
					var proj = instance_create_depth(x,y - (20 * dirY),depth,obj_Projectile_YolkyYolk);
					proj.owner = id;
					proj.enemy = true;
					proj.destroyableByEnemy = false;
					proj.hurtsObject = false;
					proj.hurtsEnemy = false;
					proj.hurtsPlayer = true;
					proj.vsp = random_range(-4,-6);
					proj.hsp = random_range(-2,2);
					proj.paletteIndex = paletteIndex;
				}
				if (attackCountMax != -1) attackCount += 1;
				scaleExX = .05;
				scaleExY = -.05;
			}
			else
			{
				scaleExX = -.05;
				scaleExY = .05;
				if ((attackCountMax != -1) and (attackCount >= attackCountMax))
				{
					attackCount = 0;
					attack = false;
					animDir = 1;
					attackTimer = attackTimerMax;
					shootTimer = -1;
				}
			}
		}
	}
	else
	{
		if (state != 1)
		{
			attack = false;
			shootTimer = -1;
			attackTimer = attackTimerMax;
		}
	}
	
	//States
	
	switch (state)
	{
		//Shoot A Few Times
		
		case 0:
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else if (attack)
		{
			image_index = animDir;
			sprite_index = sprShoot;
		}
		else
		{
			sprite_index = sprIdle;
		}
		break;
		
		//Shoot Forever
		
		case 1:
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else if (attack)
		{
			image_index = animDir;
			sprite_index = sprShoot;
		}
		else
		{
			sprite_index = sprIdle;
		}
		break;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}