///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Walky_Normal_Idle;
		sprWalk = spr_Walky_Normal_Walk;
		sprAttack = spr_Walky_Normal_Attack;
		sprHurt = spr_Walky_Normal_Hurt;
		break;
	}
}

//Event Inherited

event_inherited();

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
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
		//Horizontal Wave Movement
		
		case 0:
		if ((!hurt) and (!attack))
		{
			if (parasol)
			{
				scr_AI_HorizontalWaveMovement(false);
			}
			else
			{
				scr_AI_HorizontalWaveMovement(true);
			}
		}
		
		if (hurt) hspDummy = 0;
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (attack)
			{
				sprite_index = sprAttack;
			}
			else
			{
				if (movespeed == 0)
				{
					sprite_index = sprIdle;
				}
				else
				{
					sprite_index = sprWalk;
				}
			}
		}
		break;
		
		//Horizontal Straight Movement
		
		case 1:
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
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (attack)
			{
				sprite_index = sprAttack;
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
		}
		break;
	}
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		if (attack)
		{
			attack = false;
			attackTimer = attackTimerMax;
		}
		else
		{
			if (audio_is_playing(snd_WalkyAttack)) audio_stop_sound(snd_WalkyAttack);
			audio_play_sound(snd_WalkyAttack,0,false);
			attack = true;
			shakeX = 2;
			var attackDir = 45;
			if (dirX == -1) attackDir = 135;
			for (var i = 0; i < 3; i++)
			{
				var proj = instance_create_depth(x,y,depth,obj_Projectile_WalkyNote);
				proj.enemy = true;
				proj.hurtsObject = false;
				proj.hurtsEnemy = false;
				proj.hurtsPlayer = true;
				proj.destroyableByWall = false;
				proj.destroyableByEnemy = false;
				proj.destroyableByObject = false;
				proj.hsp = lengthdir_x(3,attackDir - (45 * dirX));
				proj.vsp = lengthdir_y(3,attackDir - (45 * dirX));
			}
			hsp = 0;
			attackTimer = attackTimerMin;
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}