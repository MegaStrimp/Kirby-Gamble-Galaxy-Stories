///@description Main

//Get Inhaled

scr_Object_Inhale(enemy);

if (!global.pause)
{
	//Gravity
	
	if (!isBubble)
	{
		if (vsp < gravLimit)
		{
			vsp += grav;
		}
		else
		{
			vsp = gravLimit;
		}
	}
	
	//Destroy
	
	with (obj_AirPuff)
	{
		if (place_meeting(x,y,other))
		{
			other.destroy = true;
			var par = instance_create_depth(x,y,depth,obj_Particle);
			par.sprite_index = sprDestroy;
			par.dir = dirX;
			par.destroyAfterAnimation = true;
			instance_destroy();
		}
	}
	
	if ((place_meeting(x,y,obj_Spike)) or (place_meeting(x,y,obj_Gordo)) or (place_meeting(x,y,obj_BloodGordo)) or (place_meeting(x,y,obj_GhostGordo))) destroy = true;
	
	//Scale
	
	if (isBubble) scale = lerp(scale,1,.1);
	
	//Movement
	
	if (!isBubble)
	{
		hsp = scr_Friction(hsp,decel);
	}
	else
	{
		scr_AI_VerticalWaveMovement(false);
	}
	
	if (!insideWall)
	{
		//Horizontal Collision
		
		if (doesJump)
		{
			with (obj_ParentWall)
			{
				//if (place_meeting(other.x + other.hsp,other.y,self))
				if ((!platform) and (place_meeting(x - other.hsp,y,other)))
				{
					if (audio_is_playing(snd_AbilityStarBounce)) audio_stop_sound(snd_AbilityStarBounce);
					audio_play_sound(snd_AbilityStarBounce,0,false);
					other.dir *= -1;
				}
			}
		}
		
		x += hsp;
		
		//Vertical Collision
		
		if (doesJump)
		{
			with (obj_ParentWall)
			{
				if ((!platform) and (place_meeting(x,y - 1,other)))
				{
					if (audio_is_playing(snd_AbilityStarBounce)) audio_stop_sound(snd_AbilityStarBounce);
					audio_play_sound(snd_AbilityStarBounce,0,false);
					if (!other.isBubble) other.vsp = -other.jumpspeed;
				}
			}
			
			with (obj_ParentWall)
			{
				if ((!platform) and (sign(other.vsp) == -1) and (place_meeting(x,y - other.vsp,other)))
				{
					while (!place_meeting(x,y - (sign(other.vsp) / 10),other))
					{ 
					    other.y += (sign(other.vsp) / 10);
					}
					if (audio_is_playing(snd_AbilityStarBounce)) audio_stop_sound(snd_AbilityStarBounce);
					audio_play_sound(snd_AbilityStarBounce,0,false);
					other.vsp = 0;
				}
			}
		}
		else
		{
			if (place_meeting(x,y + vsp,obj_ParentWall))
			{
			    while (!place_meeting(x,y + (sign(vsp) / 10),obj_ParentWall))
			    { 
			        y += (sign(vsp) / 10);
			    }
			    vsp = 0;
			}
		}
		
		y += vsp;
		
		//Destroy
		
		if (position_meeting(x,y,obj_ParentWall))
		{
			if (!((instance_place(x,y,obj_ParentWall)).platform))
			{
				insideWall = true;
				destroyTimer = destroyTimerMin;
			}
		}
	}
	
	//Scan
	
	with (obj_Projectile)
	{
		if (place_meeting(x,y,other))
		{
			if ((damageType == damageTypes.scan) and (other.ability != playerAbilities.none))
			{
				if (canScan)
				{
					if (owner.scanTimer == -1)
					{
						if (audio_is_playing(snd_ScanCapture)) audio_stop_sound(snd_ScanCapture);
						audio_play_sound(snd_ScanCapture,0,false);
						global.pause = true;
						if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
						if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
						canScan = false;
						particleTimer = particleTimerMax;
						owner.cAbility = other.ability;
						owner.scanTimer = owner.scanTimerMax;
						var par = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						par.sprite_index = spr_Particle_Scan1;
						par.pausable = false;
						par.destroyTimer = owner.scanTimerMax;
						var par = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						par.sprite_index = spr_Particle_Scan2;
						par.pausable = false;
						par.destroyTimer = owner.scanTimerMax;
						var par = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						par.sprite_index = spr_Particle_Scan3;
						par.pausable = false;
						par.destroyTimer = owner.scanTimerMax;
					}
				}
			}
		}
	}
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		destroy = true;
		destroyTimer = -1;
	}
	
	//Aura Timer
	
	if (auraTimer > 0)
	{
		auraTimer -= 1;
	}
	else if (auraTimer == 0)
	{
		if (hasAura)
		{
			hasAura = false;
		}
		else
		{
			hasAura = true;
		}
		auraTimer = auraTimerMax;
	}
	
	if (destroy)
	{
		if (audio_is_playing(snd_AbilityStarDestroy)) audio_stop_sound(snd_AbilityStarDestroy);
		audio_play_sound(snd_AbilityStarDestroy,0,false);
		for (var i = 0; i < 4; i++)
		{
			var parDirection = (45 + (90 * i)) * dir;
			
			var parScaleDir = 1;
			if ((parDirection > 90) and (parDirection <= 270))
			{
				var parScaleDir = -1;
			}
			
			var par = instance_create_depth(x,y,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_SmallStar;
			par.image_index = 0;
			par.imageSpeed = 0;
			par.spdBuiltIn = 6;
			par.fricSpd = .6;
			par.direction = parDirection;
			par.destroyTimer = 20;
			if ((parDirection > 90) and (parDirection <= 270))
			{
				var parScaleDir = -1;
			}
			par.dir = parScaleDir;
		}
		if (isBubble)
		{
			var particle = instance_create_depth(x,y,depth,obj_Particle);
			particle.sprite_index = spr_Particle_Bubble3;
			particle.destroyAfterAnimation = true;
		}
		instance_destroy();
	}
	
	//Off Screen Turning
	
	if (x <= ((sprite_get_width(mask_index) / 2) + 1)) dir = 1;
	if (x >= (room_width - ((sprite_get_width(mask_index) / 2) + 1))) dir = -1;
	
	//Clamp
	
	x = clamp(x,0 + (sprite_get_width(mask_index) / 2),room_width - (sprite_get_width(mask_index) / 2));
	y = clamp(y,0 + (sprite_get_height(mask_index) / 2),room_height + 32 + (sprite_get_height(mask_index) / 2));
	
	//Death On Bottom
	
	if (y >= room_height + 24) destroyTimer = 0;
	
	//Animation
	
	image_xscale = scale * dir;
	image_yscale = scale;
	
	image_speed = 1 * dir;
}
else
{
	image_speed = 0;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}