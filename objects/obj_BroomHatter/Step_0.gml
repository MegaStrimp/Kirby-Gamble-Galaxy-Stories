///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_BroomHatter_Normal_Idle;
		sprWalk = spr_BroomHatter_Normal_Walk;
		sprHurt = spr_BroomHatter_Normal_Inhale;
		sprHurtNormal = spr_BroomHatter_Normal_Hurt;
		break;
	}
	if (state == 1) attackTimer = -1;
	sprite_index = sprIdle;
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
	
	//States
	
	switch (state)
	{
		//Normal
		
		case 0:
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		break;
		
		//Stand Still
		
		case 1:
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurtNormal;
		}
		else
		{
			sprite_index = sprIdle;
		}
		break;
	}
	
	//Dust Particle
	
	if ((!particleReleased) and (sprite_index = sprWalk) and (image_index >= image_number - 2))
	{
		particleReleased = true;
		var par = instance_create_depth(x + ((movespeed * 18) * dirX),y,depth - 1,obj_Particle);
		par.sprite_index = spr_Particle_BroomDust;
		par.imageSpeed = 1;
		par.dir = dirX;
		par.destroyAfterAnimation = true;
	}
	
	//Attack Timer
	
	if ((!hurt) and (place_meeting(x,y + 1,collisionY)))
	{
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			if (turnCounter != -1)
			{
				if (turnCounter >= turnCounterMax)
				{
					turnCounter = 0;
					dirX *= -1;
				}
				if (turnCounter <= turnCounterMax) turnCounter += 1;
			}
			particleReleased = false;
			sprite_index = sprWalk;
			image_index = 0;
			hsp = movespeed * dirX;
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