///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprForm1 = spr_Projectile_BeamCharge_Normal_Form1;
		sprForm2 = spr_Projectile_BeamCharge_Normal_Form2;
		sprForm3 = spr_Projectile_BeamCharge_Normal_Form3;
		sprForm4 = spr_Projectile_BeamCharge_Normal_Form4;
		break;
	}
	sprIdle = sprForm1;
	scaleEx = scale * 1.25;
	scale = 0;
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Grow
	
	if (scale < scaleEx)
	{
		scale += .25;
	}
	else
	{
		scale = scaleEx;
	}
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var par = instance_create_depth(x + irandom_range(-(sprite_get_width(sprite_index) / 2),(sprite_get_width(sprite_index) / 2)),y + irandom_range(-(sprite_get_height(sprite_index) / 2),(sprite_get_height(sprite_index) / 2)),depth - 1,obj_Particle);
		par.sprite_index = spr_Particle_Spark1;
		par.image_index = irandom_range(0,par.image_number - 1);
		par.imageSpeed = 0;
		par.destroyTimer = 1;
		if (instance_exists(owner))
		{
			if (((owner.player == 0) and (global.hatTypeBeamP1 == abilityHatSkins.beam_marxSoul)) or ((owner.player == 1) and (global.hatTypeBeamP2 == abilityHatSkins.beam_marxSoul)))
			{
				par.sprite_index = spr_Particle_MarxDiamonds;
				par.image_alpha = .5;
				par.imageSpeed = 1;
				par.scale = random_range(.5,.75);
				par.destroyTimer = 3;
			}
		}
		particleTimer = particleTimerMax + irandom_range(-4,4);
	}
	
	//Flare Timer
	
	if (flareTimer > 0)
	{
		flareTimer -= 1;
	}
	else if (flareTimer == 0)
	{
		var par = instance_create_depth(x + irandom_range(-(sprite_get_width(sprite_index) / 2),(sprite_get_width(sprite_index) / 2)),y + irandom_range(-(sprite_get_height(sprite_index) / 2),(sprite_get_height(sprite_index) / 2)),depth + 1,obj_Particle);
		par.sprite_index = choose(spr_Particle_BeamFlareWhite,spr_Particle_BeamFlarePink,spr_Particle_BeamFlareYellow);
		par.image_index = choose(1,2);
		par.hsp = (choose(1,2) * (-dirX));
		par.dir = -dirX;
		par.imageSpeed = 0;
		par.destroyTimer = irandom_range(5,15);
		flareTimer = flareTimerMax + irandom_range(-2,1);
	}
	
	//Form Change Timer
	
	if (formChangeTimer > 0)
	{
		formChangeTimer -= 1;
	}
	else if (formChangeTimer == 0)
	{
		formIndex += 1;
		if (formIndex > 3) formIndex -= 4;
		switch (formIndex)
		{
			case 0:
			sprIdle = sprForm1;
			break;
			
			case 1:
			sprIdle = sprForm2;
			break;
			
			case 2:
			sprIdle = sprForm3;
			break;
			
			case 3:
			sprIdle = sprForm4;
			break;
		}
		formChangeTimer = formChangeTimerMax;
	}
	
	//Upgrade Proj Timer
	
	if (upgradeProjTimer > 0)
	{
		upgradeProjTimer -= 1;
	}
	else if (upgradeProjTimer == 0)
	{
		if (instance_exists(owner))
		{
			var projBeam = instance_create_depth(x,y - 4,depth + 1,obj_Projectile_Beam);
			projBeam.imageSpeed = 1;
			projBeam.owner = owner;
			projBeam.abilityType = playerAbilities.beam;
			projBeam.dmg = 12;
			projBeam.dirX = dirX;
			projBeam.character = 6;
			projBeam.sprite_index = spr_Projectile_Beam_Gold;
			projBeam.image_xscale = projBeam.dirX;
			projBeam.vsp = -random_range(5,7);
			projBeam.state = 1;
			projBeam.enemy = false;
			projBeam.hasGravity = true;
			projBeam.invisTimer = -1;
			projBeam.alphaTimer = projBeam.alphaTimerMax;
		}
		upgradeProjTimer = upgradeProjTimerMax;
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}