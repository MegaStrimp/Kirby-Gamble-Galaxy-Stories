///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Tookey_Normal_Idle;
		sprFly = spr_Tookey_Normal_Fly;
		sprHurt = spr_Tookey_Normal_Hurt;
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
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
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
		
		if ((hurt) and (sprHurt != "self"))
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
		
		if (hurt)
		{
			hspDummy = 0;
			vsp = scr_Friction(vsp,decel);
			vspDummy = 0;
		}
		
		if (state1Trigger)
		{
			hasGravity = false;
			if (vspDummy < 0) vspDummy += accel;
			if (hspDummy < movespeed) hspDummy += accel;
			hsp = (hspDummy * walkDirX);
			vsp = (vspDummy * walkDirY);
		}
		else
		{
			hasGravity = true;
		}
		
		if ((hurt) and (sprHurt != "self"))
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
		
		if (!hurt)
		{
			scr_AI_HorizontalStraightMovement(true,false);
		}
		else
		{
			vsp = scr_Friction(vsp,decel);
			hspDummy = 0;
		}
		
		if ((hurt) and (sprHurt != "self"))
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