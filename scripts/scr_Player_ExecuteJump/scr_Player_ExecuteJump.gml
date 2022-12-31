///@description Player - Execute Jump

function scr_Player_ExecuteJump()
{
	if ((canMultiJump) and (multiJumpLimit != -1)) multiJumpCounter += 1;
	
	switch (playerCharacter)
	{
		case playerCharacters.gamble:
		if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
		audio_play_sound(snd_Jump,0,false);
		var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
		parJump.sprite_index = spr_Particle_Jump;
		parJump.destroyAfterAnimation = true;
		parJump.spdBuiltIn = 6;
		parJump.fricSpd = .6;
		parJump.direction = 90 + (20 * dir);
		vsp = -jumpspeed + (vspCollision / 2);
		break;
				
		case playerCharacters.waddleDee:
		var jumpSound = choose(snd_WaddleDee1,snd_WaddleDee6,snd_WaddleDee7,snd_WaddleDee8,snd_WaddleDee9,snd_WaddleDee10,snd_WaddleDee11);
		audio_play_sound(jumpSound,0,false);
		if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
		audio_play_sound(snd_Jump,0,false);
		var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
		parJump.sprite_index = spr_Particle_Jump;
		parJump.destroyAfterAnimation = true;
		parJump.spdBuiltIn = 6;
		parJump.fricSpd = .6;
		parJump.direction = 90 + (20 * dir);
		sprite_index = sprJump;
		image_index = 0;
		vsp = -jumpspeed + (vspCollision / 2);
		break;
				
		case playerCharacters.waddleDoo:
		if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
		audio_play_sound(snd_Jump,0,false);
		var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
		parJump.sprite_index = spr_Particle_Jump;
		parJump.destroyAfterAnimation = true;
		parJump.spdBuiltIn = 6;
		parJump.fricSpd = .6;
		parJump.direction = 90 + (20 * dir);
		sprite_index = sprJump;
		image_index = 0;
		vsp = -jumpspeed + (vspCollision / 2);
		break;
				
		case playerCharacters.brontoBurt:
		if (audio_is_playing(snd_WingFlap)) audio_stop_sound(snd_WingFlap);
		audio_play_sound(snd_WingFlap,0,false);
		var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
		parJump.sprite_index = spr_Particle_Jump;
		parJump.destroyAfterAnimation = true;
		parJump.spdBuiltIn = 6;
		parJump.fricSpd = .6;
		parJump.direction = 90 + (20 * dir);
		sprite_index = sprJump;
		image_index = 0;
		vsp = -jumpspeed + (vspCollision / 2);
		break;
				
		case playerCharacters.twizzy:
		if (audio_is_playing(snd_WingFlap)) audio_stop_sound(snd_WingFlap);
		audio_play_sound(snd_WingFlap,0,false);
		var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
		parJump.sprite_index = spr_Particle_Jump;
		parJump.destroyAfterAnimation = true;
		parJump.spdBuiltIn = 6;
		parJump.fricSpd = .6;
		parJump.direction = 90 + (20 * dir);
		sprite_index = sprJump;
		image_index = 0;
		vsp = -jumpspeed + (vspCollision / 2);
		break;
				
		case playerCharacters.tookey:
		if (audio_is_playing(snd_WingFlap)) audio_stop_sound(snd_WingFlap);
		audio_play_sound(snd_WingFlap,0,false);
		var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
		parJump.sprite_index = spr_Particle_Jump;
		parJump.destroyAfterAnimation = true;
		parJump.spdBuiltIn = 6;
		parJump.fricSpd = .6;
		parJump.direction = 90 + (20 * dir);
		sprite_index = sprJump;
		image_index = 0;
		vsp = -jumpspeed + (vspCollision / 2);
		break;
				
		case playerCharacters.sirKibble:
		if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
		audio_play_sound(snd_Jump,0,false);
		var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
		parJump.sprite_index = spr_Particle_Jump;
		parJump.destroyAfterAnimation = true;
		parJump.spdBuiltIn = 6;
		parJump.fricSpd = .6;
		parJump.direction = 90 + (20 * dir);
		sprite_index = sprJump;
		image_index = 0;
		vsp = -jumpspeed + (vspCollision / 2);
		break;
				
		case playerCharacters.bouncy:
		if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
		audio_play_sound(snd_Jump,0,false);
		sprite_index = sprJump;
		image_index = 0;
		vsp = -jumpspeed + (vspCollision / 2);
		break;
				
		default:
		if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
		audio_play_sound(snd_Jump,0,false);
		if ((carriedItem == carriedItems.none) and (playerAbility != playerAbilities.sword) and (playerAbility != playerAbilities.parasol) and (playerAbility != playerAbilities.hammer)) fallRoll = true;
		sprite_index = sprJump;
		image_index = 0;
		vsp = -jumpspeed + (vspCollision / 2);
		if (attackNumber == playerAttacks.slideJump)
		{
			vsp = -(jumpspeed * .6) + (vspCollision / 2);
		}
		else
		{
			var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
			parJump.sprite_index = spr_Particle_Jump;
			parJump.destroyAfterAnimation = true;
			parJump.spdBuiltIn = 6;
			parJump.fricSpd = .6;
			parJump.direction = 90 + (20 * dir);
		}
		didJump = true;
		break;
	}
}