/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	if (appear)
	{
		scr_Object_Inhale(enemy);
		scr_Enemy_HurtsPlayer(dmg);
	}
	hsp = scr_Friction(hsp,decel);

	switch (actionState)
	{
		case 0:
		//walking
		sprite_index = sprWalk;
		if (!hurt)
		{
			scr_AI_HorizontalStraightMovement(true,true);
		}
		break;
		
		case 1:
		sprite_index = sprAttack;
		//automatically find direction of player and switch simirror direction to it
		break;
		
		case 2:
		sprite_index = sprHurt;
		hsp = 1.5 * -dirX;

		break;
		
		case 3:
		sprite_index = spr_Simirror_Normal_Clone;
		break;
		
		case 4: //appearify
		sprite_index = spr_Particle_SimirrorAppear;
		break;
	}
	
	var harm = hurt or !(appear);
	if (harm) //this is literally just because i don't like having a nested if statement that shares a conditional with its parents
	{	
		if (mirror_id) //need this here because apparently having an id of 0 counts as existing and passing 0 to instance_destroy obviously deletes your own object
		{
			if (instance_exists(mirror_id))
			{
				instance_destroy(mirror_id);
			}
		}
		//erm... sorry for all of the if statements but atleast i'm not comparing strings constantly
		//looking at you, yanderedev
		
		sprite_index = sprHurt;
		
		if (hurt)
		{
			timerState = 0;
			timer = 180;
			actionState = 0;
		}
	}
	
	if (!hurt)
	{
		if (timer)
		{
			timer--;
		}
		else
		{
			var new_value = irandom_range(90, 180); //tweak the values later if you need to, i'm a bit lazy so i won't
			switch (timerState)
			{
				case 0:
				if (instance_exists(obj_Player))
				{
					dirX = -((x - obj_Player.x) / abs(x - obj_Player.x));
					movespeed *= dirX * (movespeed / abs(movespeed));
				}
				hsp = 0;
				
				if (irandom_range(0, 10))
				{
					actionState = 1;
					audio_play_sound(snd_EnemyIce, 0, false);
					mirror_id = instance_create_depth(x + (20 * dirX), y,depth, obj_Projectile_SimirrorBarrier);
					mirror_id.dirX = dirX;
					mirror_id.owner = id;
					timerState++;
				}
				else
				{
					timerState = 4;
					actionState = 3;
					new_value = 30;
				}
				break;
			
				case 1:
				if (mirror_id and instance_exists(mirror_id))
				{
					instance_destroy(mirror_id);
				}
				visible = true;
				gravNormal = 0.15;
				invincible = false;
				hasYCollision = true;
				hasXCollision = true;
				appear = true;
				
				actionState = 0;
				timerState = 0;
				break;
				
				case 2:
				if (!first_hit) //this is really just a safety net on the off chance some random space radiation flips a bit and sets timerState to 2
				{
					visible = false;
					timerState = 3;
					hsp = 0;
					vsp = 0;
					new_value = 30;
				}
				break;
				
				case 3:
				actionState = 5;
				timerState = 1;
				new_value = 6;
				vsp = 0;
				
				y = reappear_y;
				x = obj_Player.x + (100 * dirX); //i'm not gonna waste time checking if obj_player is around since this should never appear without the player, but you can fix this for multiplayer
				var particle_id = instance_create_depth(x, y-7, depth, obj_Particle);
				particle_id.sprite_index = spr_Particle_SimirrorAppear;
				particle_id.destroyTimer = 6;
				break;
				
				case 4:
				
				audio_play_sound(snd_Slash, 0, false);
				var particle_id = instance_create_depth(x, y - 7, depth, obj_Particle);
				particle_id.sprite_index = spr_Particle_SimirrorStar;
				particle_id.y -= 16;
			
				var x1 = x + (118 * dirX);
				var time_in_frames = 12;
				
				particle_id.hsp = (x1 - x) / time_in_frames;
				particle_id.destroyTimer = time_in_frames;
				particle_id.image_speed = (time_in_frames / 60);
				
				timerState = 5;
				new_value = time_in_frames;
				break;
				
				case 5:
				var create = instance_create_depth(x + (118 * dirX), y, depth, obj_Simirror);
				create.actionState = 3;
				create.dirX = -dirX;
				create.timer = 10;
				create.timerState = 1;
				
				timerState = 1;
				new_value = 11;
				break;
				
				default:
				break;
				
			}
			timer = new_value;
		}
	}
}