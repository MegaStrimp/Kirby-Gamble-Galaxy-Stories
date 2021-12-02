///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (state)
	{
		case "roundabout":
		destroyTimer = 30;
		break;
		
		case "doubleCross":
		parLoopMax = 4;
		break;
		
		case "doubleHex":
		parLoopMax = 4;
		break;
	}
	particleTimer = 0;
	setupTimer = -1;
}

if (!global.pause)
{
	//Release Particles
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		switch (state)
		{
			case "roundabout":
			parDirection = 60 * parNumber;
			
			if ((!indexHasChanged) and (parIndex == 0))
			{
				parIndex = 1;
				indexHasChanged = true;
			}
			if ((!indexHasChanged) and (parIndex == 1))
			{
				parIndex = 0;
				indexHasChanged = true;
			}
			
			var par = instance_create_depth(x,y,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_BigStar_Yellow;
			par.image_index = parIndex;
			par.imageSpeed = 0;
			par.spdBuiltIn = 5 + (parNumber / 4);
			par.fricSpd = .3;
			par.direction = parDirection * dir;
			par.trailTimer = 0;
			par.destroyTimer = 10;
			parScaleDir = 1;
			if ((par.direction > 90) and (par.direction <= 270))
			{
				parScaleDir = -1;
			}
			par.dir = parScaleDir;
			
			parNumber += 1;
			particleTimer = 4;
			indexHasChanged = false;
			break;
			
			case "doubleCross":
			parIndex = 0;
			if (parNumber = 1) parIndex = 1;
			
			for (var i = 0; i < parLoopMax; i++)
			{
				parDirection = (45 + (90 * i) + (parNumber * 45)) * dir;
				
				var par = instance_create_depth(x,y,depth - 1,obj_Particle);
				par.sprite_index = spr_Particle_BigStar_Yellow;
				par.image_index = parIndex;
				par.imageSpeed = 0;
				par.spdBuiltIn = 5;
				par.fricSpd = .3;
				par.direction = parDirection;
				par.trailTimer = 0;
				if (parNumber = 0) par.destroyTimer = 15;
				if (parNumber = 1) par.destroyTimer = 20;
				parScaleDir = 1;
				if ((par.direction > 90) and (par.direction <= 270))
				{
					parScaleDir = -1;
				}
				par.dir = parScaleDir;
			}
			
			if (parNumber == 1) instance_destroy();
			
			parNumber += 1;
			particleTimer = 15;
			break;
			
			case "cross":
			for (var i = 0; i < 4; i++)
			{
				var parDirection = (45 + (90 * i)) * dir;
				
				var parScaleDir = 1;
				if ((parDirection > 90) and (parDirection <= 270))
				{
					var parScaleDir = -1;
				}
				
				var par = instance_create_depth(x,y,depth - 1,obj_Particle);
				par.sprite_index = spr_Particle_BigStar_Yellow;
				par.image_index = 0;
				par.imageSpeed = 0;
				par.spdBuiltIn = 5;
				par.fricSpd = .3;
				par.direction = parDirection;
				par.trailTimer = 0;
				par.destroyTimer = 20;
				if ((parDirection > 90) and (parDirection <= 270))
				{
					var parScaleDir = -1;
				}
				par.dir = parScaleDir;
				if (i == 3) instance_destroy();
			}
			break;
			
			case "doubleHex":
			parIndex = 0;
			if (parNumber = 1) parIndex = 1;
			
			for (var i = 0; i < parLoopMax; i++)
			{
				if (parNumber == 0)
				{
					switch (i)
					{
						case 0:
						parDirection = 90;
						break;
						
						case 1:
						parDirection = 205;
						break;
						
						case 2:
						parDirection = 335;
						break;
					}
				}
				else
				{
					switch (i)
					{
						case 0:
						parDirection = 270;
						break;
						
						case 1:
						parDirection = 25;
						break;
						
						case 2:
						parDirection = 155;
						break;
					}
				}
				
				var par = instance_create_depth(x,y,depth - 1,obj_Particle);
				par.sprite_index = spr_Particle_BigStar_Yellow;
				par.image_index = parIndex;
				par.imageSpeed = 0;
				par.spdBuiltIn = 5;
				par.fricSpd = .3;
				par.direction = parDirection;
				par.trailTimer = 0;
				if (parNumber = 0) par.destroyTimer = 15;
				if (parNumber = 1) par.destroyTimer = 20;
				parScaleDir = 1;
				if ((par.direction > 90) and (par.direction <= 270))
				{
					parScaleDir = -1;
				}
				par.dir = parScaleDir;
			}
			
			if (parNumber == 1) instance_destroy();
			
			parNumber += 1;
			particleTimer = 15;
			break;
			
			case "beamAlt":
			for (var i = 0; i < 2; i++)
			{
				var par = instance_create_depth(x,y,depth - 1,obj_Particle);
				if (i == 0)
				{
					par.sprite_index = spr_Particle_Explosion2;
					par.image_index = 0;
					par.imageSpeed = 0;
					par.destroyTimer = 2;
				}
				else
				{
					par.sprite_index = spr_Particle_Cloud1;
					par.direction = 90;
					par.imageSpeed = 1;
					par.spdBuiltIn = 4;
					par.fricSpd = .4;
					par.destroyAfterAnimation = true;
					instance_destroy();
				}
			}
			break;
			
			case "spitStar":
			if (parNumber == 0)
			{
				for (var i = 0; i < 4; i++)
				{
					var par = instance_create_depth(x,y,depth - 1,obj_Particle);
					par.sprite_index = spr_Particle_Sparkle3;
					par.destroyAfterAnimation = true;
					var par = instance_create_depth(x,y,depth - 1,obj_Particle);
					par.sprite_index = spr_Particle_ShrinkingStar3;
					par.destroyAfterAnimation = true;
					par.spdBuiltIn = 8;
					par.fricSpd = .6;
					var parDirection = 0;
					if (dir == -1) parDirection = -1;
					par.direction = (120 + (i * 40)) + (parDirection * 180);
				}
				instance_destroy();
			}
			break;
			
			case "beamCharge":
			if (parNumber == 0)
			{
				for (var i = 0; i < 7; i++)
				{
					var par = instance_create_depth(x,y,depth,obj_Particle);
					par.sprite_index = spr_Particle_BeamCharge;
					par.destroyTimer = 4;
					var par = instance_create_depth(x + (irandom_range(8,-8)),y + (irandom_range(8,-8)),depth - 1,obj_Particle);
					par.sprite_index = choose(spr_Particle_BeamFlareWhite,spr_Particle_BeamFlarePink,spr_Particle_BeamFlareYellow);
					par.image_index = choose(1,2);
			        par.direction = irandom_range(1,360);
			        par.spdBuiltIn = irandom_range(2,3);
					par.dir = choose(-1,1);
					par.imageSpeed = 0;
					par.destroyTimer = irandom_range(5,15);
				}
				instance_destroy();
			}
			break;
			
			case "explosion1":
			switch (parNumber)
			{
				case 0:
				var par = instance_create_depth(x,y,depth - 1,obj_Particle);
				par.sprite_index = spr_Particle_Shine1;
				par.imageSpeed = 1.5;
				par.destroyAfterAnimation = true;
				particleTimer = 1;
				break;
				
				case 1:
				var par = instance_create_depth(x,y,depth,obj_Particle);
				par.sprite_index = spr_Particle_Aura4;
				par.imageSpeed = 1.5;
				par.destroyAfterAnimation = true;
				particleTimer = 1;
				break;
				
				case 2:
				var par = instance_create_depth(x,y,depth,obj_Particle);
				par.sprite_index = spr_Particle_ShrinkingStar3;
				par.imageSpeed = 1.5;
				par.destroyAfterAnimation = true;
				particleTimer = 2;
				break;
				
				case 3:
				for (var i = 0; i < 4; i++)
				{
					var dirX = 1;
					var dirY = 1;
					switch (i)
					{
						case 0:
						var dirX = 1;
						var dirY = 1;
						break;
						
						case 1:
						var dirX = 1;
						var dirY = -1;
						break;
						
						case 2:
						var dirX = -1;
						var dirY = -1;
						break;
						
						case 3:
						var dirX = -1;
						var dirY = 1;
						break;
					}
					var par = instance_create_depth(x + (4 * dirX),y + (4 * dirY),depth,obj_Particle);
					par.sprite_index = spr_Particle_Explosion4;
					par.imageSpeed = 1.5;
					par.hsp = 2 * dirX;
					par.vsp = -2 * dirY;
					par.dir = dirX;
					par.dirY = dirY;
					par.destroyAfterAnimation = true;
				}
				particleTimer = 3;
				break;
				
				case 4:
				for (var i = 0; i < 8; i++)
				{
					var par = instance_create_depth(x,y,depth - 1,obj_Particle);
					par.sprite_index = spr_Particle_Sparkle2;
					par.spdBuiltIn = 4;
					par.direction = (45 * i);
					par.destroyAfterAnimation = true;
				}
				particleTimer = 1;
				break;
				
				case 5:
				for (var i = 0; i < 4; i++)
				{
					var par = instance_create_depth(x,y,depth - 1,obj_Particle);
					par.sprite_index = spr_Particle_Explosion4;
					par.imageSpeed = 1.5;
					var dirX = 1;
					var dirY = 1;
					switch (i)
					{
						case 0:
						var dirX = 1;
						var dirY = 1;
						par.hsp = 0;
						par.vsp = 2.5;
						break;
						
						case 1:
						var dirX = 1;
						var dirY = -1;
						par.hsp = 2.5;
						par.vsp = 0;
						break;
						
						case 2:
						var dirX = -1;
						var dirY = -1;
						par.hsp = 0;
						par.vsp = -2.5;
						break;
						
						case 3:
						var dirX = -1;
						var dirY = 1;
						par.hsp = -2.5;
						par.vsp = 0;
						break;
					}
					par.dir = dirX;
					par.dirY = dirY;
					par.destroyAfterAnimation = true;
				}
				particleTimer = 3;
				break;
			}
			parNumber += 1;
			break;
		}
	}
	
	//Destroy
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
		destroyTimer = -1;
	}
}