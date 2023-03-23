///@description Main

//Event Inherited

event_inherited();

if (!childPause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Destroy
	
	if ((place_meeting(x,y + 1,collisionY)) or (place_meeting(x,y - 1,collisionY))) death = true;
	
	//Particle Timer
	
	if (instance_exists(owner))
	{
		if (owner.x == x)
		{
			if (particleTimer > 0)
			{
				particleTimer -= 1;
			}
			else if (particleTimer == 0)
			{
				var par = instance_create_depth(x,ystart,depth + 1,obj_Particle);
				par.sprite_index = spr_Particle_CappyDust;
				par.vsp = -9;
				par.destroyAfterAnimation = true;
				particleTimer = particleTimerMax;
			}
		}
	}
}
else
{
	image_speed = 0;
}