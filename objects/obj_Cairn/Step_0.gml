/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	if (hurt) hspDummy = 0;
	if ((hurt) and (sprHurt != -1))
	{
		image_speed = 1;
		sprite_index = sprHurt;
	}
	else
	{
		image_speed = 1;
		sprite_index = sprIdle;
	}
	if ((!hurt) and (place_meeting(x,y + 1,collisionY)) and (!place_meeting(x,y - jumpspeed,collisionY) and (attack)))
	{
		hsp = 0;
		switch (jumpState)
		{
			case 0:
			jumpState += 1;
			break;
		
			case 1:
			if (audio_is_playing(snd_EnemyJump5)) audio_stop_sound(snd_EnemyJump5);
			audio_play_sound(snd_EnemyJump5,0,false);
			var parJump = instance_create_depth(x - (7 * dirX),y + 5,depth + 1,obj_Particle);
			parJump.sprite_index = spr_Particle_Jump;
			parJump.destroyAfterAnimation = true;
			parJump.spdBuiltIn = 6;
			parJump.fricSpd = .6;
			parJump.direction = 90 + (20 * dirX);
			scaleExX = -.25;
			scaleExY = .25;
			sectionspd = 2;
			hspDir = 1;
			switch (state)
			{
				case 0:
				if (jumpCount == 2) hspDir *= -1;
				break;
				
				case 1:
				var playerX = x;
				if (instance_exists(obj_Player)) playerX = instance_nearest(x,y,obj_Player).x;
				if (playerX < x)
				{
					hspDir = -1;
				}
				else
				{
					hspDir = 1;
				}
				break;
			}
			hsp = movespeed * hspDir;
			if (jumpCount == 2)
			{
				vsp = -jumpspeed;
				jumpCount = 0;
				attackTimer = 120;
			}
			else
			{
				vsp = -(jumpspeed * 0.75)
				jumpCount += 1;
				attackTimer = 60;
			}
			attack = false;
			jumpState = 0;
			break;
		}
	}
	else
	{
		jumpState = 0;
		jump = false;
		attack = false;		
	}
	
	if (place_meeting(x,y + vsp,collisionY))
	{
		hsp = 0;
		hsp = scr_Friction(hsp,decel);
	}
	sectionspd = clamp(sectionspd - 0.25, -5, 5);
	
	//Timers
	if ((!hurt) and (!attack))
	{
	//set attack timer to lower value during three jumps, set it to like a second right after	
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			if (place_meeting(x,y + 1,collisionY)) attack = true;
		}
	}
	middleoffset = clamp(middleoffset + sectionspd, 8, 20);
	topoffset = clamp(topoffset + sectionspd * 2, 15, 35);
}