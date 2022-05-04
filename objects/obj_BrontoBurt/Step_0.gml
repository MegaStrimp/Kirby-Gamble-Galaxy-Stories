///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_BrontoBurt_Normal_Idle;
		sprReady = spr_BrontoBurt_Normal_Ready;
		sprWalk = spr_BrontoBurt_Normal_Walk;
		sprFly = spr_BrontoBurt_Normal_Fly;
		sprHurtGround = spr_BrontoBurt_Normal_HurtGround;
		sprHurtFly = spr_BrontoBurt_Normal_HurtFly;
		break;
		
		//Alien
		
		case 1:
		sprIdle = spr_BrontoBurt_Alien_Idle;
		sprReady = spr_BrontoBurt_Alien_Ready;
		sprWalk = spr_BrontoBurt_Alien_Walk;
		sprFly = spr_BrontoBurt_Alien_Fly;
		sprHurtGround = spr_BrontoBurt_Alien_HurtGround;
		sprHurtFly = spr_BrontoBurt_Alien_HurtFly;
		break;
	}
}

//Hurt Sprite

if (place_meeting(x,y + 1,collisionY))
{
	sprHurt = sprHurtGround;
}
else
{
	sprHurt = sprHurtFly;
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//Gravity
	
	hasGravity = hurt;
	
	//States
	
	switch (state)
	{
		//Vertical Wave Movement with Horizontal Straight Movement
		
		case 0:
		hasXKnockback = false;
		hasYKnockback = false;
		
		if (!hurt)
		{
			scr_AI_VerticalWaveMovement(false);
			scr_AI_HorizontalStraightMovement(true,false);
		}
		else
		{
			vsp = scr_Friction(vsp,decel);
			vspDummy = 0;
		}
		
		if ((hurt) and (sprHurt != -1))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			if (sign(vsp) > 0)
			{
				image_speed = 1;
			}
			else
			{
				image_speed = 2;
			}
			sprite_index = sprFly;
		}
		break;
		
		//Ascend and Dash when Player gets near
		
		case 1:
		hasXKnockback = false;
		hasYKnockback = false;
		
		if (instance_exists(obj_Player))
		{
			if ((!state1Trigger) and ((distance_to_object(obj_Player) <= triggerRange)))
			{
				state1Trigger = true;
				vspDummy = -jumpspeed;
			}
		}
		
		if (state1Trigger)
		{
			hasXCollision = false;
			hasYCollision = false;
			if (!hurt)
			{
				hasGravity = false;
				if (vspDummy < 0) vspDummy += accel;
				if (hspDummy < movespeed) hspDummy += accel;
				hsp = (hspDummy * walkDirX);
				vsp = (vspDummy * walkDirY);
			}
		}
		else
		{
			hasXCollision = true;
			hasYCollision = true;
			hasGravity = true;
		}
		
		if (hurt)
		{
			hspDummy = 0;
			vsp = scr_Friction(vsp,decel);
			vspDummy = 0;
		}
		
		if ((hurt) and (sprHurt != -1))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			if (state1Trigger)
			{
				image_speed = 2;
				sprite_index = sprFly;
			}
			else
			{
				image_speed = 1;
				sprite_index = sprReady;
			}
		}
		break;
		
		//Horizontal Straight Movement and Jump with Timer
		
		case 2:
		hasGravity = true;
		hasXKnockback = false;
		hasYKnockback = false;
		
		if ((!hurt))
		{
			scr_AI_HorizontalStraightMovement(true,false);
		}
		else
		{
			hspDummy = 0;
		}
		
		if ((hurt) and (sprHurt != -1))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			if (sign(vsp) > 0)
			{
				image_speed = 1;
			}
			else
			{
				image_speed = 2;
			}
			sprite_index = sprFly;
		}
		break;
		
		//Walk
		
		case 3:
		hasGravity = true;
		hasXCollision = true;
		hasYCollision = true;
		clampPositionX = true;
		clampPositionY = true;
		offScreenTurning = true;
		
		if (!hurt)
		{
			scr_AI_HorizontalStraightMovement(true,true);
		}
		else
		{
			vsp = scr_Friction(vsp,decel);
		}
		
		if ((hurt) and (sprHurt != -1))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			if (hsp == 0)
			{
				sprite_index = sprIdle;
			}
			else
			{
				sprite_index = sprWalk;
			}
		}
		break;
	}
	
	//Jump Timer
	
	if (jumpTimer > 0)
	{
		jumpTimer -= 1;
	}
	else if (jumpTimer == 0)
	{
		jumpTimer = -1;
		switch (state)
		{
			case 2:
			vsp = -jumpspeed;
			jumpTimer = jumpTimerMax;
			break;
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}