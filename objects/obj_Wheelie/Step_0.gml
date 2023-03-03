///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!childPause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	#region Hurt Player
	scr_Enemy_HurtsPlayer(dmg);
	#endregion
	
	#region Friction
	hsp = scr_Friction(hsp,decel);
	#endregion
	
	#region States
	switch (state)
	{
		case 0:
		#region Movement
		if ((!hurt) and (!crashed)) hsp += (accel * (dash)) * walkDirX;
		hsp = clamp(hsp,-(movespeed * (dash)),(movespeed * (dash)));
		
		if ((runParticleTimer == -1) and (hsp != 0)) runParticleTimer = runParticleTimerMax;
		
		if (dash == 2)
		{
			var afterimage = instance_create_depth(x,y,depth,obj_Afterimage);
			afterimage.owner = id;
			afterimage.sprite_index = sprite_index;
			afterimage.image_index = image_index;
			afterimage.image_xscale = image_xscale;
			afterimage.image_yscale = image_yscale;
			afterimage.image_alpha = .5;
			afterimage.paletteIndex = paletteIndex;
		}
		#endregion
		
		#region Turn
		if ((hsp != 0) and (canTurn) and (!crashed))
		{
			var nearestPlayer = instance_nearest(x,y,obj_Player);
			var newDir = 1;
			if (nearestPlayer.x < x) newDir = -1;
			
			if (newDir != walkDirX)
			{
				walkDirX = newDir;
				canTurn = false;
				canTurnTimer = canTurnTimerMax;
			}
		}
		
		dirX = walkDirX;
		#endregion
		
		#region Crash
		if (crashed)
		{
			if ((crashedTimer == -1) and (place_meeting(x,y + 1,collisionY)))
			{
				crashed = false;
			}
		}
		else
		{
			if ((dash == 2) and (hsp != 0) and (place_meeting(x + hsp,y,collisionX)))
			{
				hsp = (movespeed * -walkDirX);
				dash = 0;
				attackChooseTimer = 0;
				crashed = true;
				crashedTimer = crashedTimerMax;
				vsp = -jumpspeed;
			}
		}
		#endregion
		
		#region Animation
		image_speed = 1;
		
		if (((hurt) or (crashed)) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (abs(hsp - ((movespeed * (dash)) * walkDirX)) > movespeed * (dash * 1.5))
			{
				sprite_index = sprDecel1;
			}
			else if (abs(hsp - ((movespeed * (dash)) * walkDirX)) > movespeed * (dash))
			{
				sprite_index = sprDecel2;
			}
			else
			{
				sprite_index = sprIdle;
			}
		}
		#endregion
		break;
	}
	#endregion
	
	#region Attack Choose Timer
	if (!crashed)
	{
		if (attackChooseTimer > 0)
		{
			attackChooseTimer -= 1;
		}
		else if (attackChooseTimer == 0)
		{
			switch (attackState)
			{
				case 0:
				hsp = 0;
				dash = 0;
				attackState = 1;
				attackChooseTimer = attackChooseTimerMax;
				break;
				
				case 1:
				attackState = 0;
				attackChooseTimer = -1;
				attackNumber = choose(0,1,2,3);
				switch (attackNumber)
				{
					case 0:
					dash = 1;
					attackChooseTimer = 210;
					break;
					
					case 1:
					dash = 2;
					attackChooseTimer = 90;
					break;
					
					case 2:
					jumpTimer = jumpTimerMax;
					break;
					
					case 3:
					jumpTimer = jumpTimerMax;
					break;
				}
				break;
			}
		}
	}
	#endregion
	
	#region Can Turn Timer
	if (canTurnTimer > 0)
	{
		canTurnTimer -= 1;
	}
	else if (canTurnTimer == 0)
	{
		canTurn = true;
		canTurnTimer = -1;
	}
	#endregion
	
	#region Jump Timer
	if ((!crashed) and (place_meeting(x,y + 1,collisionY)) and (!place_meeting(x,y - jumpspeed,collisionY)))
	{
		if (jumpTimer > 0)
		{
			jumpTimer -= 1;
		}
		else if (jumpTimer == 0)
		{
			jumpCount += 1;
			switch (attackNumber)
			{
				case 2:
				if (jumpCount > 1)
				{
					jumpCount = 0;
					dash = 1;
					jumpTimer = -1;
					attackChooseTimer = 210;
				}
				else
				{
					vsp = -jumpspeed;
					jumpTimer = jumpTimerMax;
				}
				break;
				
				case 3:
				if (jumpCount > 3)
				{
					jumpCount = 0;
					jumpTimer = -1;
					attackChooseTimer = attackChooseTimerMax;
				}
				else
				{
					vsp = -jumpspeed;
					jumpTimer = jumpTimerMax;
				}
				break;
			}
		}
	}
	#endregion
	
	#region Run Particle Timer
	if (runParticleTimer > 0)
	{
		runParticleTimer -= 1;
	}
	else if (runParticleTimer == 0)
	{
		if (hsp != 0)
		{
			var parCarryStart = instance_create_depth(x + (16 * -dirX),y + 16,depth - 1,obj_Particle);
			parCarryStart.sprite_index = spr_Particle_Run;
			parCarryStart.hsp = (1.25 + random_range(-.75,.75)) * -dirX;
			parCarryStart.vsp = -(2 + random_range(-.75,.75));
			parCarryStart.imageSpeed = 1;
			parCarryStart.destroyAfterAnimation = true;
			parCarryStart.dir = -dirX;
		}
		runParticleTimer = -1;
	}
	#endregion
	
	#region Crashed Timer
	if (crashedTimer > 0)
	{
		crashedTimer -= 1;
	}
	else if (crashedTimer == 0)
	{
		crashedTimer = -1;
	}
	#endregion
}
else
{
	image_speed = 0;
}
