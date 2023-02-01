///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_PoppyBrosJr_Normal_Idle;
		sprThrowReady = spr_PoppyBrosJr_Normal_ThrowReady;
		sprThrow = spr_PoppyBrosJr_Normal_Throw;
		sprHand = spr_PoppyBrosJr_Normal_Hand;
		sprHurt = spr_PoppyBrosJr_Normal_Hurt;
		break;
	}
	if (weaponIndex == 0)
	{
		ability = playerAbilities.none;
		attackTimer = -1;
	}
}

//Event Inherited

event_inherited();

if (!childPause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//States
	
	switch (state)
	{
		//Throw One Bomb
		
		case 0:
		//Variables
		
		var nearestPlayer = -1;
		nearestPlayer = instance_nearest(x,y,obj_Player);
		var playerDir = 1;
		
		if ((nearestPlayer != -1) and (nearestPlayer.x < x))
		{
			playerDir = -1;
		}
		
		dirX = playerDir;
		
		//Movement
		
		if ((!hurt) and (!attack))
		{
			if (parasol)
			{
				scr_AI_HorizontalStraightMovement(false,true);
			}
			else
			{
				scr_AI_HorizontalStraightMovement(true,true);
			}
		}
		
		if (hurt) hspDummy = 0;
		
		//Hand Position
		
		if (attack) handPos += handPosSpd;
		
		//Jump
		
		if ((place_meeting(x,y + 1,collisionY)) and (!hurt) and (!attack))
		{
			if (audio_is_playing(snd_EnemyJump4)) audio_stop_sound(snd_EnemyJump4);
			audio_play_sound(snd_EnemyJump4,0,false);
			image_index = 0;
			walkDirX = choose(-1,-1,1,1,playerDir);
			vsp = -jumpspeed;
		}
		
		//Animation
		
		image_speed = 1;
		
		if (hurt)
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (!attack)
			{
				sprite_index = sprIdle;
			}
		}
		break;
	}
	
	//Attack Timer
	
	if (!hurt)
	{
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			switch (attackState)
			{
				case 0:
				hsp = 0;
				sprite_index = sprThrowReady;
				image_index = 0;
				attack = true;
				bomb = instance_create_depth(x,y,depth + 1,obj_Projectile_Bomb);
				bomb.owner = id;
				bomb.active = false;
				bomb.enemy = true;
				bomb.destroyableByWall = false;
				bomb.destroyableByPlayer = false;
				bomb.destroyableByEnemy = false;
				bomb.destroyableByObject = false;
				bomb.destroyableByProjectile = false;
				bomb.hurtsObject = false;
				bomb.hurtsEnemy = false;
				bomb.hurtsBoss = false;
				bomb.hurtsPlayer = false;
				bomb.hurtsProjectile = false;
				bomb.hurtsObject = false;
				bomb.hurtsEnemy = false;
				bomb.hurtsPlayer = true;
				attackState = 1;
				attackTimer = 45;
				break;
				
				case 1:
				sprite_index = sprThrow;
				image_index = 0;
				handPos = 5;
				if (instance_exists(bomb))
				{
					bomb.active = true;
					bomb.destroyableByPlayer = true;
					bomb.destroyableByEnemy = false;
					bomb.hsp = 2.5 * dirX;
					bomb.vsp = -4.5;
					bomb.angleSpd = bomb.hsp * 4;
					attackState = 2;
					attackTimer = 45;
				}
				else
				{
					attack = false;
					attackState = 0;
					handPos = 0;
					attackTimer = attackTimerMax;
				}
				break;
				
				case 2:
				attack = false;
				attackState = 0;
				handPos = 0;
				attackTimer = attackTimerMax;
				break;
			}
		}
	}
	else
	{
		attack = false;
		attackState = 0;
		handPos = 0;
		attackTimer = attackTimerMax;
	}
}
else
{
	image_speed = 0;
}