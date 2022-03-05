///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Gordo_Normal_Idle;
		sprHurt = "self";
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//States
	
	switch (state)
	{
		//Stay Still
		
		case 0:
		break;
		
		//Horizontal Straight Movement
		
		case 1:
		scr_AI_HorizontalStraightMovement(false,true);
		break;
		
		//Vertical Straight Movement
		
		case 2:
		scr_AI_VerticalStraightMovement(false,true);
		break;
		
		//Horizontal Straight Movement with Hops
		
		case 3:
		if (place_meeting(x,y + 1,collisionY))
		{
			imageAngle += (45 * dirX);
			
			for (var i = 0; i < 2; i++)
			{
				var parDirection = 180 * i;
				var parScaleDir = 1;
				if ((parDirection > 90) and (parDirection <= 270))
				{
					parScaleDir = -1;
				}
				var parSquish = instance_create_depth(x,y,depth + 1,obj_Particle);
				parSquish.sprite_index = spr_Particle_SmallStar;
				parSquish.destroyTimer = 30;
				parSquish.spdBuiltIn = 6;
				parSquish.fricSpd = .6;
				parSquish.direction = parDirection;
				parSquish.dir = parScaleDir;
			}
		}
		if ((place_meeting(x,y + 1,obj_Gordo)) or (place_meeting(x,y + 1,obj_BloodGordo)) or (place_meeting(x,y + 1,obj_Blado)))
		{
			vsp = -jumpspeed;
		}
		if ((place_meeting(x,y - 1,obj_Gordo)) or (place_meeting(x,y - 1,obj_BloodGordo)) or (place_meeting(x,y - 1,obj_Blado)))
		{
			vsp = 0;
		}
		hasGravity = true;
		scr_AI_HorizontalStraightMovement(true,true);
		scr_AI_BunnyHop();
		break;
	}
	
	//Gordo Collision
	
	if ((turnableX) and ((place_meeting(x + sign(hspFinal),y,obj_Gordo)) or (place_meeting(x + sign(hspFinal),y,obj_BloodGordo)) or (place_meeting(x + sign(hspFinal),y,obj_Blado))))
	{
		walkDirX *= -1;
		turnableX = false;
		turnableXTimer = turnableXTimerMax;
	}
	if ((turnableY) and ((place_meeting(x,y + sign(vspFinal),obj_Gordo)) or (place_meeting(x,y + sign(vspFinal),obj_BloodGordo)) or (place_meeting(x,y + sign(vspFinal),obj_Blado))))
	{
		walkDirY *= -1;
		turnableY = false;
		turnableYTimer = turnableYTimerMax;
	}
	
	//Turnable X Timer
	
	if (turnableXTimer > 0)
	{
		turnableXTimer -= 1;
	}
	else if (turnableXTimer == 0)
	{
		turnableX = true;
		turnableXTimer = -1;
	}
	
	//Turnable Y Timer
	
	if (turnableYTimer > 0)
	{
		turnableYTimer -= 1;
	}
	else if (turnableYTimer == 0)
	{
		turnableY = true;
		turnableYTimer = -1;
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}