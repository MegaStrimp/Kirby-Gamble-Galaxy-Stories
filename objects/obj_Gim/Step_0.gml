///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Gim_Normal_Idle;
		sprWalk = spr_Gim_Normal_Walk;
		sprHurt = spr_Gim_Normal_Hurt;
		sprJump = spr_Gim_Normal_Jump;
		sprFall = spr_Gim_Normal_Fall;
		sprPrep = spr_Gim_Normal_Prep;
		sprHandFlingDown = spr_GimHand_Normal_FlingDown;
		sprHandFlingMiddle = spr_GimHand_Normal_FlingMiddle;
		sprHandFlingUp = spr_GimHand_Normal_FlingUp;
		sprHandHoldClose = spr_GimHand_Normal_HoldClose;
		sprHandHoldAway = spr_GimHand_Normal_HoldAway;
		break;
	}
}

//Event Inherited

event_inherited();

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	//Hurt Player
	
	scr_Object_Inhale(enemy);
	
	scr_Enemy_HurtsPlayer(dmg);
	
	hsp = scr_Friction(hsp, decel);
	
	//States
	
	switch (state)
	{
		//Stay Still
		
		case 0:
		sprite_index = sprIdle;
		break;
		
		//Horizontal Straight Movement
		
		case 1:
		var stopWalk = (floor(image_index) == 3) or (floor(image_index) == 0);
		
		sprite_index = sprWalk;
		walkDirX = dirX;

		if (stopWalk)
		{
			image_speed = 0;
			hsp = 0;
			
			if (walk)
			{
				timerState = 3;
			}
			else
			{
				image_speed = 1;
				walk = 4;
				state = 0;
				timerState = 0;
				timer = 45;
			}
			timerEnable = true;
		}
		else
		{
			scr_AI_HorizontalStraightMovement(true,true);
			image_speed = 1;
		}
		break;
		
		//throw-yo
		
		case 2:
		//i forgor :skull:
		sprite_index = sprPrep;
		
		if (yoTimer > 45)
		{
			sprite_index = sprIdle;
		}
		
		if (yoTimer > 75)
		{
			if (!instance_exists(throwyo))
			{
				throwyo = instance_create_depth(x, y, depth, obj_Projectile_GimYoyo);
				throwyo.dirX = dirX;
			}
			else if (!instance_exists(throwyo))
			{
				yoTimer = 0;
				throwyo = 0;
				state = 1;
				break;
			}
		}
		yoTimer++;
		break;
		
		//Horizontal Straight Movement with Hops
		
		case 3:
		if (vsp > 0)
		{
			sprite_index = sprFall;
		}
		else
		{
			sprite_index = sprJump;
		}

		if (place_meeting(x,y + 1,collisionY))
		{
			if (!jump)
			{
				jump = 3;
				state = 1;
				break;
			}
			
			vsp = -jumpspeed;
			jump--;
		}
		break;
	}
	
	//Animation
	if !(state == 1) image_speed = 1;
	if (hurt)
	{
		sprite_index = sprHurt;
		
		state = 0;
		timerState = 0;
		timer = 100;
	}
	
	if (!hurt and timerEnable)
	{
		if (timer)
		{
			timer--;
		}
		else
		{
			var timer_val = 100;
			switch (timerState)
			{
				case 0:
				var rand = irandom_range(0, 99); //i should refine this.... OORRRR I could leave it alone
				if (rand > 40) state = 2 else state = 3;
				
				timerEnable = false;
				break;
				
				case 3:
				timer_val = walkFrame;
				
				if (!walk)
				{
					timer_val = 0;
					timerState = 0;
					walk = 4;
				}
				else
				{
					walk--;
				}
				
				image_index = floor(image_index) + 1;
				timerEnable = false;
				break;
			}
			timer = timer_val;
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}
