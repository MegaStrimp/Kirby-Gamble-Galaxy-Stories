///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_MysticDoo_Normal_Idle;
		sprAttack = spr_MysticDoo_Normal_Attack;
		sprHurt = spr_MysticDoo_Normal_Hurt;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale();
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//Gravity
	
	hasGravity = hurt;
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//Trail
	
	/*var afterimage = instance_create_depth(x,y,depth + 1,obj_Afterimage);
	afterimage.image_speed = 0;
	afterimage.sprite_index = sprite_index;
	afterimage.image_index = image_index;
	afterimage.image_xscale = image_xscale;
	afterimage.image_alpha = .3;
	afterimage.paletteIndex = spr_MysticDoo_Normal_Palette_TrailPurple;
	afterimage.destroyTimer = 4;*/
	
	//States
	
	switch (state)
	{
		//Floating
		
		case 0:
		if (!hurt)
		{
			scr_AI_VerticalWaveMovement(false);
			if (!attack) scr_AI_HorizontalStraightMovement(true,true);
		}
		
		if ((hurt) and (sprHurt != "self"))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			if ((attack) and (attackState == 2))
			{
				image_speed = 1;
				sprite_index = sprAttack;
			}
			else
			{
				image_speed = 1;
				sprite_index = sprIdle;
			}
		}
		break;
	}
	
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
					projBeam.character = 3;
					projBeam.sprIdle = spr_Projectile_MysticBeam_Enemy;
				}
			}
			else if (attackState == 1)
			{
				if (audio_is_playing(snd_MysticBeamLaunch)) audio_stop_sound(snd_MysticBeamLaunch);
				audio_play_sound(snd_MysticBeamLaunch,0,false);
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
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}