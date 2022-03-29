///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Rocky_Normal_Idle;
		sprWalk = spr_Rocky_Normal_Walk;
		sprJump = spr_Rocky_Normal_Jump;
		sprHurtGround = spr_Rocky_Normal_HurtGround;
		sprHurtAir = spr_Rocky_Normal_HurtAir;
		sprHurt = sprHurtGround;
		break;
		
		//KSSU
		
		case 1:
		sprIdle = spr_Rocky_KSSU_Idle;
		sprWalk = spr_Rocky_KSSU_Walk;
		sprJump = spr_Rocky_KSSU_Jump;
		sprHurtGround = spr_Rocky_KSSU_HurtGround;
		sprHurtAir = spr_Rocky_KSSU_HurtAir;
		sprHurt = sprHurtGround;
		break;
	}
	if (state == 0) attackTimer = -1;
}

//Hurt Sprite

if (place_meeting(x,y - 1,collisionY))
{
	sprHurt = sprHurtGround;
}
else
{
	sprHurt = sprHurtAir;
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//States
	
	switch (state)
	{
		//Stand Still
		
		case 0:
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != "self"))
		{
			sprite_index = sprHurt;
		}
		else
		{
			sprite_index = sprIdle;
		}
		break;
		
		//Walk
		
		case 1:
		dirX = walkDirX;
		
		//Animation
		
		if ((hurt) and (sprHurt != "self"))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			if (vsp == 0)
			{
				if (((animDir == 1) and (image_index >= image_number - 1)) or ((animDir == -1) and (image_index <= 1)))
				{
					image_speed = 0;
				}
				else
				{
					image_speed = 1 * animDir;
				}
				sprite_index = sprWalk;
			}
			else
			{
				image_speed = 1;
				sprite_index = sprIdle;
			}
		}
		break;
		
		if ((animDir == 1) and (image_index >= image_number - 1)) image_index = image_number - 1;
		if ((animDir == -1) and (image_index <= 1)) image_index = 1;
	}
	
	//Fall
	
	if ((hp > 0) and (place_meeting(x,y + vsp + 1,collisionY)) and (sign(vsp) == 1) and (abs(vsp) >= gravLimit * .9))
	{
		if (audio_is_playing(snd_StoneFallen)) audio_stop_sound(snd_StoneFallen);
		audio_play_sound(snd_StoneFallen,0,false);
		scaleExX = .2;
		scaleExY = -.2;
		shakeY = 3;
		for (var i = 0; i < 2; i++)
		{
			var parXDir = 4;
			if (i == 1) var parXDir = -4;
			var par = instance_create_depth(x + parXDir,y + 3,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_ShrinkingStar4;
			if (i == 0)
			{
				par.hsp = 3;
			}
			else if (i == 1)
			{
				par.hsp = -3;
			}
			par.dir = sign(par.hsp);
			par.destroyAfterAnimation = true;
		}
		if (instance_exists(obj_Camera))
		{
			obj_Camera.shakeX = 2;
			obj_Camera.shakeY = 2;
		}
	}
	
	//Attack Timer
	
	if ((!hurt) and (vsp == 0))
	{
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			image_index = 0;
			if (animDir == 1) image_index = image_number - 1;
			animDir *= -1;
			if (place_meeting(x + walkDirX,y,collisionX)) walkDirX *= -1;
			hsp = movespeed * walkDirX;
			attackTimer = attackTimerMax;
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}