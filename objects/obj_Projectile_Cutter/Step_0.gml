///@description Main
	
//Touch Wall

if ((charge) and (place_meeting(x + hsp,y,obj_Wall)))
{
	var collidedWall = instance_place(x + hsp,y,obj_Wall);
	if (!collidedWall.enemyCollisionHitbox)
	{
		if ((collidedWall.object) and ((collidedWall.object_index != obj_AbilityBlock) or (collidedWall.damageType == damageTypes.cutter))) collidedWall.hp -= 1;
		if (collidedWall.hp != 0)
		{
			if (collided >= 4) instance_destroy();
			collided += 1;
			dirX *= -1;
			hsp = decelMax * dirX;
		}
	}
}

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Variables
	
	scr_Player_Inputs(player);
	
	//Angle
	
	imageAngle += angleSpd * dirX;
	
	//Movement
	
	if (collided == 0) hsp -= (decel * dirX);
	hsp = clamp(hsp,-decelMax,decelMax);
	
	if ((!global.cutscene) and (!enemy))
	{
		if (keyUpHold)
		{
			vsp = -jumpspeed;
		}
		if (keyDownHold)
		{
			vsp = jumpspeed;
		}
		if (((keyUpHold) and (keyDownHold)) or ((!keyUpHold) and (!keyDownHold)))
		{
			vsp = 0;
		}
	}
	
	//Cutter Catch
	
	if (!enemy)
	{
		if ((sign(hsp) == -sign(dirX)) and (place_meeting(x,y,owner)))
		{
			var collidedPlayer = instance_place(x,y,owner);
			if (((collidedPlayer.player == 0) and ((global.abilityP1 == playerAbilities.cutter) or (global.characterP1 == playerCharacters.sirKibble)))
			or ((collidedPlayer.player == 1) and ((global.abilityP2 == playerAbilities.cutter) or (global.characterP2 == playerCharacters.sirKibble)))
			or ((collidedPlayer.player == 2) and ((global.abilityP3 == playerAbilities.cutter) or (global.characterP3 == playerCharacters.sirKibble)))
			or ((collidedPlayer.player == 3) and ((global.abilityP4 == playerAbilities.cutter) or (global.characterP4 == playerCharacters.sirKibble))))
			{
				if (audio_is_playing(snd_CutterCatch)) audio_stop_sound(snd_CutterCatch);
				audio_play_sound(snd_CutterCatch,0,false);
				collidedPlayer.cutterCatch = true;
				collidedPlayer.cutterCatchTimer = collidedPlayer.cutterCatchTimerMax;
			}
			instance_destroy();
		}
	}
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = 1;
	
	if (charge)
	{
		sprite_index = sprCharge;
	}
	else
	{
		sprite_index = sprIdle;
	}
	
	//Trail Timer
	
	if (trailTimer > 0)
	{
		trailTimer -= 1;
	}
	else if (trailTimer == 0)
	{
		var afterimage = instance_create_depth(x,y,depth,obj_Afterimage);
		afterimage.sprite_index = spr_Particle_Cutter;
		afterimage.hsp = hsp / 4;
		afterimage.vsp = vsp / 4;
		afterimage.image_xscale = image_xscale;
		afterimage.image_alpha = .75;
		afterimage.paletteIndex = paletteIndex;
		afterimage.lowerAlphaToDestroy = true;
		afterimage.destroyTimer = 10;
		trailTimer = trailTimerMax;
	}
}
else
{
	image_speed = 0;
}