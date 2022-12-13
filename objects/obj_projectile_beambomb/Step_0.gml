///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprVortexReady = spr_Projectile_BeamBomb_Normal_VortexReady;
		sprVortex = spr_Projectile_BeamBomb_Normal_Vortex;
		sprExplosion = spr_Projectile_BeamBomb_Normal_Explosion;
		sprSonar = spr_Projectile_BeamBomb_Normal_Sonar;
		break;
	}
}

//Variables

hurtsEnemy = didExplode;
hurtsObject = didExplode;

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	// Explode on releasing button
	if(!didExplode && owner.keyAttackReleased){
		should_explode = true;
	}
	
	if(owner.keyAttackHold/* && !place_meeting(x,y,obj_ParentWall)*/){
		if(explode){
			explode = false;
		}
	}else if(owner.attackTimer <= 0 && should_explode/* || place_meeting(x,y,obj_ParentWall) && !didExplode*/){
		explode = true;
		should_explode = false;
	}
	
	//Explode
	
	//Event Inherited
	
	event_inherited();
	
	// Explode on releasing button
	if(owner.keyAttackHold/* && !place_meeting(x,y,obj_ParentWall)*/){
		if(explode){
			explode = false;
		}
	}else if(owner.attackTimer <= 0 && !owner.keyAttackHold && !didExplode/* || place_meeting(x,y,obj_ParentWall) && !didExplode*/){
		explode = true;
	}
	
	//Explode
	//if ((instance_exists(owner)) and (owner.attackTimer <= 0) and (owner.keyAttackReleased) and (!didExplode)) explode = true;
	
	//if ((instance_exists(owner)) and (owner.attackTimer <= 0) and (owner.keyAttackReleased) and (!didExplode)) explode = true;
	
	//if ((instance_exists(owner)) and (owner.attackTimer <= 0) and (owner.keyAttackPressed) and (!didExplode)) explode = true;
	
	if (explode)
	{
		didExplode = true;
		sprite_index = sprExplosion;
		image_index = 0;
		if (audio_is_playing(snd_BeamBombExplode)) audio_stop_sound(snd_BeamBombExplode);
		audio_play_sound(snd_BeamBombExplode,0,false);
		explode = false;
	}
	
	#region Particle Timer
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		if (!didExplode)
		{
			var par = instance_create_depth(x - (4 * dirX) + hsp,y,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Sparkle5;
			par.hsp = 1 * -dirX;
			par.vsp = random_range(-.2,.2);
			par.destroyAfterAnimation = true;
			particleTimer = 10;
		}
	}
	#endregion
	
	#region Sonar Timer
	if (sonarTimer > 0)
	{
		sonarTimer -= 1;
	}
	else if (sonarTimer == 0)
	{
		if (!didExplode)
		{
			var par = instance_create_depth(x,y,depth,obj_Particle);
			par.sprite_index = sprSonar;
			par.hsp = hsp;
			par.scale = .2;
			par.image_xscale = par.scale;
			par.image_yscale = par.scale;
			par.scaleSpd = .1;
			par.alphaSpd = -.05;
			sonarTimer = sonarTimerMax;
		}
	}
	#endregion
								
	//Position
	
	if (!didExplode)
	{
		x += hsp;
		y += vsp;
	}
	
	//Animation
	
	image_speed = 1;
	
}
else
{
	image_speed = 0;
}