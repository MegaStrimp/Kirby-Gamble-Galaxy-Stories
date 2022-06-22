///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_MovingWall_Normal_Idle;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Movement
	
	switch (movementState)
	{
		case "halberd1":
		if ((vsp == 0) and (place_meeting(x,y - 1,obj_Player))) vsp = -3;
		if (y <= 338)
		{
			vsp = 0;
			movementTimer = 0;
			y = 338;
		}
		break;
		
		case "halberd2-1":
		if (instance_exists(obj_Player))
		{
			if (abs(x - obj_Player.x) <= 120) vsp = -6;
		}
		if (y <= 336)
		{
			movementTimer = 0;
			y = 336;
		}
		break;
		
		case "halberd2-2":
		if (instance_exists(obj_Player))
		{
			if (abs(x - obj_Player.x) <= 120) vsp = -6;
		}
		if (y <= 336)
		{
			movementTimer = 0;
			y = 336;
		}
		break;
		
		case "halberd2-3":
		if (instance_exists(obj_Player))
		{
			if (abs(x - obj_Player.x) <= 120) vsp = -6;
		}
		if (y <= 312)
		{
			movementTimer = 0;
			y = 312;
		}
		break;
		
		case "halberd2-4":
		if (instance_exists(obj_Player))
		{
			if (abs(x - obj_Player.x) <= 120) vsp = -6;
		}
		if (y <= 312)
		{
			movementTimer = 0;
			y = 312;
		}
		break;
		
		case "halberd2-5":
		if (instance_exists(obj_Player))
		{
			if (abs(x - obj_Player.x) <= 120) vsp = -6;
		}
		if (y <= 240)
		{
			movementTimer = 0;
			y = 240;
		}
		break;
		
		case "halberd2-6":
		if (instance_exists(obj_Player))
		{
			if (abs(x - obj_Player.x) <= 120) vsp = -6;
		}
		if (y <= 240)
		{
			movementTimer = 0;
			y = 240;
		}
		break;
		
		case "halberd2-7":
		if (instance_exists(obj_Player))
		{
			if (abs(x - obj_Player.x) <= 120) vsp = -6;
		}
		if (y <= 216)
		{
			movementTimer = 0;
			y = 216;
		}
		break;
		
		case "halberd3-1":
		if (instance_exists(obj_Player))
		{
			if (abs(x - obj_Player.x) <= 180) vsp = -6;
		}
		if (y <= 240)
		{
			movementTimer = 0;
			y = 240;
		}
		break;
		
		case "halberd3-2":
		if (instance_exists(obj_Player))
		{
			if (abs(x - obj_Player.x) <= 180) vsp = -6;
		}
		if (y <= 216)
		{
			movementTimer = 0;
			y = 216;
		}
		break;
		
		case "halberd5-1":
		if ((hsp == 0) and (place_meeting(x,y - 1,obj_Player))) hsp = 2;
		if (x >= 2280)
		{
			hsp = 0;
			movementTimer = 0;
			x = 2280;
		}
		break;
		
		case "halberd5-2":
		if ((hsp == 0) and (place_meeting(x,y - 1,obj_Player))) hsp = 2;
		if (x >= 2424)
		{
			hsp = 0;
			movementTimer = 0;
			x = 2424;
		}
		break;
		
		case "halberd5-3":
		if ((hsp == 0) and (place_meeting(x,y - 1,obj_Player))) hsp = -2;
		if (x <= 2280)
		{
			hsp = 0;
			movementTimer = 0;
			x = 2280;
		}
		break;
		
		case "halberd5-4":
		if ((vsp == 0) and (place_meeting(x,y - 1,obj_Player))) vsp = -2;
		if (y <= 120)
		{
			vsp = 0;
			movementTimer = 0;
			y = 120;
		}
		break;
		
		case "eggGardenSample2-1":
		if (y >= 1194)
		{
			movementSubState = 0;
			movementTimer = 0;
			y = 1194;
		}
		if (y <= 936)
		{
			movementSubState = 1;
			movementTimer = 0;
			y = 936;
		}
		break;
		
		case "eggGardenSample2-2":
		if (y >= 1026)
		{
			movementSubState = 0;
			movementTimer = 0;
			y = 1026;
		}
		if (y <= 744)
		{
			movementSubState = 1;
			movementTimer = 0;
			y = 744;
		}
		break;
		
		case "eggGardenSample2-3":
		if (y >= 786)
		{
			movementSubState = 0;
			movementTimer = 0;
			y = 786;
		}
		if (y <= 504)
		{
			movementSubState = 1;
			movementTimer = 0;
			y = 504;
		}
		break;
		
		case "eggGardenSample2-4":
		if (y >= 522)
		{
			movementSubState = 0;
			movementTimer = 0;
			y = 522;
		}
		if (y <= 240)
		{
			movementSubState = 1;
			movementTimer = 0;
			y = 240;
		}
		break;
		
		case "abilityChallengeBeam2-1":
		if (y <= 144)
		{
			y = 144;
			vsp = 0;
		}
		else
		{
			if ((movementTimer == -1) and (vsp == 0) and (place_meeting(x,y - 1,obj_Player))) movementTimer = 45;
		}
		break;
		
		case "abilityChallengeBeam4-1":
		if ((vsp == 0) and (place_meeting(x,y - 1,obj_Player))) vsp = -4;
		if (y <= 360)
		{
			vsp = 0;
			movementTimer = 0;
			y = 360;
		}
		break;
	}
	
	//Movement Timer
	
	if (movementTimer > 0)
	{
		movementTimer -= 1;
	}
	else if (movementTimer == 0)
	{
		switch (movementState)
		{
			case "eggGardenSample2-1":
			if (movementSubState == 0)
			{
				vsp = -1;
			}
			else
			{
				vsp = 1;
			}
			break;
			
			case "eggGardenSample2-2":
			if (movementSubState == 0)
			{
				vsp = -1;
			}
			else
			{
				vsp = 1;
			}
			break;
			
			case "eggGardenSample2-3":
			if (movementSubState == 0)
			{
				vsp = -1;
			}
			else
			{
				vsp = 1;
			}
			break;
			
			case "eggGardenSample2-4":
			if (movementSubState == 0)
			{
				vsp = -1;
			}
			else
			{
				vsp = 1;
			}
			break;
			
			case "abilityChallengeBeam2-1":
			vsp = -2;
			movementTimer = -1;
			break;
			
			default:
			hsp = 0;
			vsp = 0;
			movementTimer = -1;
			break;
		}
	}
	
	//Animation
	
	sprite_index = sprIdle;
}