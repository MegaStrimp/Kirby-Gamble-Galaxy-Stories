///@description Main

if (!global.pause)
{
	//Gravity
	
	if (hasGravity)
	{
		if (vsp < gravLimit)
		{
			vsp += grav;
		}
		else
		{
			vsp = gravLimit;
		}
	}
	
	//Item Movement
	
	itemYOffset += (itemYOffsetSpd * itemYOffsetDir);
	if ((abs(itemYOffset) >= itemYOffsetMax)) itemYOffsetDir *= -1;
	
	//Item Animation
	
	itemAnim += itemAnimSpd;
	if (itemAnim > sprite_get_number(sprItem)) itemAnim -= sprite_get_number(sprItem);
	
	//Give Ability
	
	imageAlpha = 1;
	
	if (place_meeting(x,y,obj_Player))
	{
		var collidedPlayer = instance_place(x,y,obj_Player);
		if (collidedPlayer.player == 0)
		{
			var playerAbility = global.abilityP1;
			var playerCharacter = global.characterP1;
		}
		else
		{
			var playerAbility = global.abilityP2;
			var playerCharacter = global.characterP2;
		}
		if ((collidedPlayer.abilityTrophyTimer == -1) and (playerCharacter == "kirby") and (ability != playerAbility))
		{
			collidedPlayer.abilityTrophyTimer = collidedPlayer.abilityTrophyTimerMax;
			if (ability != "none") collidedPlayer.blackAlphaBox = true;
			collidedPlayer.swallowActionTimer = 0;
			global.pause = true;
			if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
			collidedPlayer.hsp = 0;
			collidedPlayer.vsp = 0;
			collidedPlayer.run = false;
			if (collidedPlayer.state = playerStates.float)
			{
				collidedPlayer.jumpspeed = collidedPlayer.jumpspeedNormal;
			}
			if (collidedPlayer.state = playerStates.carry)
			{
				collidedPlayer.sucked = 0;
				collidedPlayer.cAbility = "none";
				collidedPlayer.ateHeavy = false;
				collidedPlayer.ateCappyShroom = false;
			}
			scr_Player_CancelAbility(collidedPlayer);
			collidedPlayer.image_index = 0;
			collidedPlayer.state = playerStates.swallow;
			if (collidedPlayer.player == 0)
			{
				global.abilityP1 = ability;
			}
			else
			{
				global.abilityP2 = ability;
			}
		}
		else
		{
			imageAlpha = .5;
		}
	}
	
	//Slopes
	
	if (hasXCollision)
	{
		if ((!place_meeting(x + hsp,y,collisionX)) and (place_meeting(x,y + 1,collisionX)))
		{
		    yplus = 0;
		    while ((!place_meeting(x + hsp,y + yplus,collisionX) and yplus <= abs(hsp)))
			{
				yplus += 1;
			}
		    y += yplus;
		}
	}
	
	//Horizontal Collision
	
	if (hasXCollision)
	{
		if place_meeting(x + hsp,y,collisionX)
		{
		    yplus = 0;
		    while ((place_meeting(x + hsp,y - yplus,collisionX)) and (yplus <= abs(1 * hsp)))
			{
				yplus += 1;
			}
		    if place_meeting(x + hsp,y - yplus,collisionX)
		    {
		        while (!place_meeting(x + (sign(hsp) / 10),y,collisionX))
				{
					x += (sign(hsp) / 10);
				}
		        hsp = 0;
		    }
		    else
		    {
		        y -= yplus
		    }
		}
	}
	
	x += hsp;
	
	//Vertical Collision
	
	if (hasYCollision)
	{
		if (place_meeting(x,y + vsp,collisionY))
		{
		    while (!place_meeting(x,y + (sign(vsp) / 10),collisionY))
		    { 
		        y += (sign(vsp) / 10);
		    }
		    vsp = 0;
		}
	}
	
	y += vsp;
	
	//Setup Timer
	
	if (setupTimer > 0)
	{
		setupTimer -= 1;
	}
	else if (setupTimer == 0)
	{
		switch (ability)
		{
			case "cutter":
			sprItem = spr_AbilityStar_Cutter;
			break;
			
			case "beam":
			sprItem = spr_AbilityStar_Beam;
			break;
			
			case "mysticBeam":
			sprItem = spr_AbilityStar_MysticBeam;
			break;
			
			case "stone":
			sprItem = spr_AbilityStar_Stone;
			break;
			
			case "ufo":
			sprItem = spr_AbilityStar_Ufo;
			break;
			
			case "mirror":
			sprItem = spr_AbilityStar_Mirror;
			break;
			
			case "ninja":
			sprItem = spr_AbilityStar_Ninja;
			break;
			
			case "bomb":
			sprItem = spr_AbilityStar_Bomb;
			break;
			
			case "fire":
			sprItem = spr_AbilityStar_Fire;
			break;
			break;
			
			case "mysticFire":
			sprItem = spr_AbilityStar_MysticFire;
			break;
			
			case "ice":
			sprItem = spr_AbilityStar_Ice;
			break;
			
			case "spark":
			sprItem = spr_AbilityStar_Spark;
			break;
			
			case "yoyo":
			sprItem = spr_AbilityStar_Yoyo;
			break;
			
			case "wheel":
			sprItem = spr_AbilityStar_Wheel;
			break;
			
			case "artist":
			sprItem = spr_AbilityStar_Artist;
			break;
			
			case "fighter":
			sprItem = spr_AbilityStar_Fighter;
			break;
			
			case "suplex":
			sprItem = spr_AbilityStar_Suplex;
			break;
			
			case "wing":
			sprItem = spr_AbilityStar_Wing;
			break;
			
			case "jet":
			sprItem = spr_AbilityStar_Jet;
			break;
			
			case "sword":
			sprItem = spr_AbilityStar_Sword;
			break;
			
			case "parasol":
			sprItem = spr_AbilityStar_Parasol;
			break;
			
			case "hammer":
			sprItem = spr_AbilityStar_Hammer;
			break;
			
			case "bell":
			sprItem = spr_AbilityStar_Bell;
			break;
			
			case "water":
			sprItem = spr_AbilityStar_Water;
			break;
			
			default:
			sprItem = spr_AbilityStar_Normal;
			break;
		}
		setupTimer = -1;
	}
	
	//Aura Timer
	
	if (auraTimer > 0)
	{
		auraTimer -= 1;
	}
	else if (auraTimer == 0)
	{
		if (hasAura)
		{
			hasAura = false;
		}
		else
		{
			hasAura = true;
		}
		auraTimer = auraTimerMax;
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}