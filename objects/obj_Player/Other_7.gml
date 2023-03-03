///@description Animation End

//Variables

switch (player)
{
	case 0:
	var playerAbility = global.abilityP1;
	var playerCharacter = global.characterP1;
	break;
	
	case 1:
	var playerAbility = global.abilityP2;
	var playerCharacter = global.characterP2;
	break;
	
	case 2:
	var playerAbility = global.abilityP3;
	var playerCharacter = global.characterP3;
	break;
	
	case 3:
	var playerAbility = global.abilityP4;
	var playerCharacter = global.characterP4;
	break;
}

//Idle Animation

if (idleAnimation)
{
	idleAnimation = false;
	idleAnimationTimer = 0;
	idleAnimationTimerMax = choose(10,30,45);
}

//Walking Animation

if (sprite_index == sprWalk)
{
	if (playerAbility == playerAbilities.water)
	{
		if (waterWalkHatAnim == 0)
		{
			waterWalkHatAnim = 1;
		}
		else
		{
			waterWalkHatAnim = 0
		}
	}
}

//Falling Animation

switch (playerCharacter)
{
	case playerCharacters.waddleDee:
	if (sprite_index == sprFall) image_index = image_number - 1;
	break;
}

//Fall Roll

if ((fallRoll) and (sprite_index == sprRoll)) fallRoll = false;

//Fall Hop

if ((fallHop) and (sprite_index == sprRoll)) fallHop = false;

//Float Ready

if ((!float) and ((sprite_index == sprFloatReady) or (sprite_index == sprItemCarryLightFloatReady)))
{
	if (carriedItem == carriedItems.none)
	{
		sprite_index = sprFloat;
	}
	else
	{
		sprite_index = sprItemCarryLightFloat;
	}
	image_index = 0;
	float = true;
}

//Flap

if ((sprite_index == sprFlap) or (sprite_index == sprItemCarryLightFlap))
{
	if (carriedItem == carriedItems.none)
	{
		sprite_index = sprFloat;
	}
	else
	{
		sprite_index = sprItemCarryLightFloat;
	}
	image_index = 0;
}

//Float Spit

if ((floatSpit) and ((sprite_index == sprFloatSpit) or (sprite_index == sprItemCarryLightFloatSpit)))
{
	floatSpit = false;
	if (!hasMintLeaf)
	{
		jumpspeed = jumpspeedNormal;
		state = playerStates.normal;
	}
	else
	{
		if (carriedItem == carriedItems.none)
		{
			sprite_index = sprFloat;
		}
		else
		{
			sprite_index = sprItemCarryLightFloat;
		}
		image_index = 0;
	}
}

//Inhale Ready

if ((!inhaling) and (sprite_index == sprInhaleReady)) inhaling = true;

//Inhale End

if ((inhaleEnd) and (state == playerStates.carry)) inhaleEnd = false;

//Carry Jump

if (sprite_index == sprCarryJump) image_index = image_number - 1;

//Carry Fall

if (sprite_index == sprCarryFall) image_index = image_number - 2;

//Spit

if (sprite_index == sprSpit)
{
	spit = false;
    state = playerStates.normal;
}

//Swallow

if (((sprite_index == sprSwallow) or (sprite_index == sprHardSwallow)) and (state == playerStates.swallow))
{
	if (((player == 0) and (global.abilityP1 == playerAbilities.none))
	or ((player == 1) and (global.abilityP2 == playerAbilities.none))
	or ((player == 2) and (global.abilityP3 == playerAbilities.none))
	or ((player == 3) and (global.abilityP4 == playerAbilities.none)))
	{
		global.pause = false;
		image_index = image_number - 1;
		state = playerStates.normal;
	}
	else
	{
		image_speed = 0;
	}
}

//Ability Change

if ((sprite_index == sprAbilityChange) and (state == playerStates.swallow))
{
	if (((player == 0) and (global.abilityP1 != playerAbilities.none))
	or ((player == 1) and (global.abilityP2 != playerAbilities.none))
	or ((player == 2) and (global.abilityP3 != playerAbilities.none))
	or ((player == 3) and (global.abilityP4 != playerAbilities.none)))
	{
		image_index = image_number - 1;
		image_speed = 0;
	}
}

//Cutter Attack 1

if (((attackNumber == playerAttacks.cutterNormal) or (attackNumber == playerAttacks.cutterChargeAttack)) and (sprite_index == sprCutterAttack1))
{
	attack = false;
	attackable = true;
	attackNumber = playerAttacks.none;
}

//Cutter Attack 2

if (sprite_index == sprCutterAttack2) image_index = image_number - 1;

//Final Cutter

if ((sprite_index == sprCutterAttack4) or (sprite_index == sprCutterAttack5) or (sprite_index == sprCutterAttack6)) image_index = image_number - 1;

//Sir Kibble Cutter Attack 1

if (((attackNumber == "sirKibbleCutterNormal") or (attackNumber == "sirKibbleCutterChargeAttack")) and (sprite_index == sprCutterAttack1))
{
	attack = false;
	attackNumber = playerAttacks.none;
	attackTimer = 45;
}

//Beam Normal Attack

if ((attackNumber == playerAttacks.beamNormal) and (sprite_index == sprBeamAttack1)) image_index = image_number - 1;

//Beam Up Attack

if ((attackNumber == playerAttacks.beamUp) and (sprite_index == sprBeamAttack4))
{
	image_index = image_number - 1;
	if (attackTimer == -1) attackTimer = 0;
}

//Beam Charge Attack

if ((attackNumber == playerAttacks.beamChargeAttack) and (sprite_index == sprBeamAttack5)) image_index = image_number - 1;

//Mystic Beam Normal Attack

if ((attackNumber == playerAttacks.mysticBeamNormal) and (sprite_index == sprBeamAttack1)) image_index = image_number - 1;

//Mystic Beam Barrier Break

if ((attackNumber == playerAttacks.mysticBeamBarrierBreak) and (sprite_index == sprMysticBeamAttack2)) image_index = image_number - 1;

//Mystic Beam Beam Bomb

if ((attackNumber == playerAttacks.mysticBeamDash) and (sprite_index == sprMysticBeamAttack1)) image_index = image_number - 1;

//Mystic Beam Charge Attack

if ((attackNumber == playerAttacks.mysticBeamChargeAttack) and (sprite_index == sprBeamAttack5)) image_index = image_number - 1;

//Mystic Beam Up Attack

if ((attackNumber == playerAttacks.mysticBeamUp) and (sprite_index == sprBeamAttack4))
{
	image_index = image_number - 1;
	if (attackTimer == -1) attackTimer = 0;
}

//Stone Normal Attack Ready

if (((attackNumber == playerAttacks.stoneNormal) or (attackNumber == playerAttacks.gooeyStoneNormal)) and (sprite_index == sprStoneAttack1Ready))
{
	image_index = image_number - 1;
	var par = instance_create_depth(x,y - 3,depth - 1,obj_Particle);
	par.sprite_index = spr_Particle_Aura1;
	par.destroyTimer = 2;
	if (stoneReadyTimer == -1) stoneReadyTimer = stoneReadyTimerMax;
}

//Stone Up Attack

if ((attackNumber == playerAttacks.stoneUp) and ((sprite_index == sprStoneAttack2Ready) or (sprite_index == sprStoneAttack2) or (sprite_index == sprStoneAttack2Release))) image_index = image_number - 1;

//Ufo Charge

if ((attackNumber == playerAttacks.ufoCharge) and (sprite_index == sprUfoCharge)) image_index = image_number - 4;

//Ufo Beam Attack

if ((attackNumber == playerAttacks.ufoBeam) and (sprite_index == sprUfoAttack1)) image_index = image_number - 1;

//Ufo Laser Attack

if ((attackNumber == playerAttacks.ufoLaser) and (sprite_index == sprUfoAttack2)) image_index = image_number - 1;

//Mirror Slash Attack

if ((attackNumber == playerAttacks.mirrorSlash) and (sprite_index == sprMirrorAttack1)) image_index = image_number - 1;

//Bomb Ready

if ((attackNumber == playerAttacks.bombReady) and (sprite_index == sprBombReady))
{
	if (bombDownReady)
	{
		attack = true;
		attackNumber = playerAttacks.bombDown;
		sprite_index = sprItemCarryHeavyDuck;
		image_index = 0;
	}
	else
	{
		attackTimer = 0;
		image_index = image_number - 1;
	}
}

//Bomb Normal Attack

if ((attackNumber == playerAttacks.bombNormal) and (sprite_index == sprBombAttack2)) image_index = image_number - 1;

//Bomb Dash Attack Release

if ((attackNumber == playerAttacks.bombDash) and (sprite_index == sprBombAttack3Release))
{
	attackTimer = 0;
	image_index = image_number - 1;
}

//Bomb Dash Attack Ready

if ((attackNumber == playerAttacks.bombDash) and (sprite_index == sprBombAttack3Ready))
{
	sprite_index = sprBombAttack3Release;
	image_index = 0;
}

//Fire Attack Release

if (sprite_index == sprFireAttackRelease1)
{
	sprite_index = sprFireAttackRelease2;
	image_index = 0;
}

//Ice Normal Attack Ready

if (sprite_index == sprIceAttack1Ready)
{
	iceReady = false;
	attackNumber = playerAttacks.iceNormal;
	sprite_index = sprIceAttack1;
}

//Ice Normal Attack Release

if ((attackNumber == playerAttacks.iceNormal) and (sprite_index == sprIceAttack1Release))
{
	iceReady = true;
	iceRelease = false;
	iceNormalAttackTimer = -1;
	attackTimer = 0;
}

//Ice Kick Attack

if ((iceKick) and (sprite_index == sprIceKick)) image_index = image_number - 1;

//Ice Grab

if (sprite_index == sprIceGrabReady)
{
	sprite_index = sprIceGrab;
	image_index = 0;
}

//Spark Attack 1 Ready

if ((attack) and (sprite_index == sprSparkAttack1Ready))
{
	switch (attackNumber)
	{
		case playerAttacks.sparkNone:
		if (audio_is_playing(snd_Spark1)) audio_stop_sound(snd_Spark1);
		audio_play_sound(snd_Spark1,0,false);
		var par = instance_create_depth(x + (8 * dir),y - 7,depth - 1,obj_DepthParticle);
		par.sprite_index = spr_Projectile_SparkSlash_Normal_Idle;
		par.depthStart = depth - 1;
		par.image_xscale = dir;
		var projectile = instance_create_depth(x + (6 * dir),y - 5,depth - 1,obj_Projectile_Spark);
		projectile.owner = id;
		projectile.abilityType = playerAbilities.spark;
		projectile.dmg = kirby_SparkNone_Damage;
		scr_Attack_SetKnockback(projectile,kirby_SparkNone_Strength,kirby_SparkNone_HitStopAffectSource,kirby_SparkNone_HitStopAffectPlayer,kirby_SparkNone_HitStopAffectTarget,kirby_SparkNone_HitStopLength,kirby_SparkNone_HitStopShakeStrength);
		projectile.sprite_index = spr_Particle_Spark4;
		projectile.mask_index = projectile.sprite_index;
		projectile.movespeed = dir * 8;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
		projectile.paletteIndex = 1;
		projectile.spriteChangeTimer = 4;
		projectile.destroyTimer = 8;
		break;
		
		case playerAttacks.sparkLow:
		if (audio_is_playing(snd_Spark2)) audio_stop_sound(snd_Spark2);
		audio_play_sound(snd_Spark2,0,false);
		var projectile = instance_create_depth(x + (6 * dir),y - 5,depth - 1,obj_Projectile_Spark);
		projectile.owner = id;
		projectile.abilityType = playerAbilities.spark;
		projectile.dmg = kirby_SparkLow_Damage;
		scr_Attack_SetKnockback(projectile,kirby_SparkLow_Strength,kirby_SparkLow_HitStopAffectSource,kirby_SparkLow_HitStopAffectPlayer,kirby_SparkLow_HitStopAffectTarget,kirby_SparkLow_HitStopLength,kirby_SparkLow_HitStopShakeStrength);
		projectile.sprite_index = spr_Projectile_Spark_Normal_Low;
		projectile.mask_index = projectile.sprite_index;
		projectile.movespeed = dir * 6;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
		projectile.paletteIndex = 1;
		projectile.particleTimer = projectile.particleTimerMax;
		projectile.destroyTimer = 60;
		break;
		
		case playerAttacks.sparkMid:
		if (audio_is_playing(snd_Spark3)) audio_stop_sound(snd_Spark3);
		audio_play_sound(snd_Spark3,0,false);
		var projectile = instance_create_depth(x + (6 * dir),y - 7,depth - 1,obj_Projectile_Spark);
		projectile.owner = id;
		projectile.abilityType = playerAbilities.spark;
		projectile.dmg = kirby_SparkMid_Damage;
		scr_Attack_SetKnockback(projectile,kirby_SparkMid_Strength,kirby_SparkMid_HitStopAffectSource,kirby_SparkMid_HitStopAffectPlayer,kirby_SparkMid_HitStopAffectTarget,kirby_SparkMid_HitStopLength,kirby_SparkMid_HitStopShakeStrength);
		projectile.sprite_index = spr_Particle_SparkAura;
		projectile.mask_index = spr_30Square_Mask;
		projectile.imageSpeed = 1;
		projectile.movespeed = dir * 5;
		projectile.decel = dir * .1;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
		projectile.paletteIndex = 1;
		projectile.spriteChangeTimer = 8;
		projectile.destroyTimer = 30;
		for (var i = 0; i < 2; i++)
		{
			var par = instance_create_depth(x + (6 * dir),y - 7,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Spark4;
			par.image_index = 0;
			par.turnSpd = 5;
			par.followObject = true;
			par.followedObject = projectile;
			par.turnAroundObject = true;
			par.orbit = 12;
			var parangle = (180 * i);
			par.angle = parangle;
			par.imageSpeed = 0;
		}
		for (var i = 0; i < 2; i++)
		{
			var par = instance_create_depth(x + (6 * dir),y - 7,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Spark5;
			par.turnSpd = 5;
			par.followObject = true;
			par.followedObject = projectile;
			par.turnAroundObject = true;
			par.orbit = 12;
			var parangle = 90 + (180 * i);
			if (parangle > 360) parangle -= 360;
			if (parangle < 0) parangle += 360;
			par.angle = parangle;
		}
		break;
	}
	sprite_index = sprSparkAttack1;
	image_index = 0;
}

//Spark Attack 2

if (sprite_index == sprSparkAttack2) image_index = 2;

//Spark Attack 2 Ready

if ((attack) and (sprite_index == sprSparkAttack2Ready))
{
	switch (attackNumber)
	{
		case playerAttacks.sparkHigh:
		if (audio_is_playing(snd_Spark4)) audio_stop_sound(snd_Spark4);
		audio_play_sound(snd_Spark4,0,false);
		var projectile = instance_create_depth(x + (6 * dir),y - 8,depth - 1,obj_Projectile_Spark);
		projectile.owner = id;
		projectile.abilityType = playerAbilities.spark;
		projectile.dmg = kirby_SparkHigh_Damage;
		scr_Attack_SetKnockback(projectile,kirby_SparkHigh_Strength,kirby_SparkHigh_HitStopAffectSource,kirby_SparkHigh_HitStopAffectPlayer,kirby_SparkHigh_HitStopAffectTarget,kirby_SparkHigh_HitStopLength,kirby_SparkHigh_HitStopShakeStrength);
		projectile.sprite_index = spr_Projectile_Spark_Normal_High;
		projectile.mask_index = projectile.sprite_index;
		projectile.movespeed = dir * 6;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.destroyableByEnemy = false;
		projectile.destroyableByObject = false;
		projectile.destroyableByProjectile = false;
		projectile.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
		projectile.paletteIndex = 1;
		break;
		
		case playerAttacks.sparkMax:
		if (audio_is_playing(snd_Spark5)) audio_stop_sound(snd_Spark5);
		audio_play_sound(snd_Spark5,0,false);
		var projectile = instance_create_depth(x + (6 * dir),y - 7,depth - 1,obj_Projectile_Spark);
		projectile.owner = id;
		projectile.abilityType = playerAbilities.spark;
		projectile.dmg = kirby_SparkMax_Damage;
		scr_Attack_SetKnockback(projectile,kirby_SparkMax_Strength,kirby_SparkMax_HitStopAffectSource,kirby_SparkMax_HitStopAffectPlayer,kirby_SparkMax_HitStopAffectTarget,kirby_SparkMax_HitStopLength,kirby_SparkMax_HitStopShakeStrength);
		projectile.sprite_index = spr_Particle_SparkAura;
		projectile.mask_index = spr_30Square_Mask;
		projectile.imageSpeed = 1.5;
		projectile.movespeed = dir * 6;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.destroyableByEnemy = false;
		projectile.destroyableByObject = false;
		projectile.destroyableByProjectile = false;
		projectile.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
		projectile.paletteIndex = 1;
		for (var i = 0; i < 2; i++)
		{
			var par = instance_create_depth(x + (6 * dir),y - 7,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Spark4;
			par.image_index = 0;
			par.turnSpd = 5;
			par.followObject = true;
			par.followedObject = projectile;
			par.turnAroundObject = true;
			par.orbit = 12;
			var parangle = (180 * i);
			par.angle = parangle;
			par.imageSpeed = 0;
		}
		for (var i = 0; i < 2; i++)
		{
			var par = instance_create_depth(x + (6 * dir),y - 7,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Spark5;
			par.turnSpd = 5;
			par.followObject = true;
			par.followedObject = projectile;
			par.turnAroundObject = true;
			par.orbit = 12;
			var parangle = 90 + (180 * i);
			if (parangle > 360) parangle -= 360;
			if (parangle < 0) parangle += 360;
			par.angle = parangle;
		}
		break;
	}
	sprite_index = sprSparkAttack2;
	image_index = 0;
}

//Wing Dash Attack

if ((attack) and (sprite_index == sprWingAttack2Ready))
{
	sprite_index = sprWingAttack2;
	image_index = 0;
	attackNumber = playerAttacks.wingDash;
}

//Sword Attack 1

if (sprite_index == sprSwordAttack1)
{
	image_index = image_number - 1;
}

//Sword Attack 2

if (sprite_index == sprSwordAttackDash) image_index = image_number - 2;


//Sword Attack Air

if (sprite_index == sprSwordAttackAir)
{
	image_index = image_number - 1;
}

//Sleep Ready

if ((attack) and (sprite_index == sprSleepReady))
{
	sleepParticleTimer = 0;
	sprite_index = sprSleep;
	image_index = 0;
}

//Sleep End

if ((attack) and (sprite_index == sprSleepEnd))
{
	attackTimer = 0;
	image_index = 0;
}

//Scan End

if ((attack) and (sprite_index == sprScanEnd))
{
	image_index = 0;
	attackTimer = 0;
}

//Scan

if ((attack) and (sprite_index == sprScan))
{
	if (instance_exists(scanProjectile)) instance_destroy(scanProjectile);
	sprite_index = sprScanEnd;
	image_index = 0;
}

//Scan Ready

if ((attack) and (sprite_index == sprScanReady))
{
	if (audio_is_playing(snd_Scan)) audio_stop_sound(snd_Scan);
	audio_play_sound(snd_Scan,0,false);
	scanProjectile = instance_create_depth(x,y - 6,depth - 1,obj_Projectile_Scan);
	scanProjectile.owner = id;
	scanProjectile.abilityType = playerAbilities.scan;
	scanProjectile.dmg = kirby_ScanNormal_Damage;
	scr_Attack_SetKnockback(scanProjectile,kirby_ScanNormal_Strength,kirby_ScanNormal_HitStopAffectSource,kirby_ScanNormal_HitStopAffectPlayer,kirby_ScanNormal_HitStopAffectTarget,kirby_ScanNormal_HitStopLength,kirby_ScanNormal_HitStopShakeStrength);
	scanProjectile.sprite_index = scanProjectile.sprIdle;
	scanProjectile.dirX = dir;
	scanProjectile.image_xscale = scanProjectile.dirX;
	scanProjectile.enemy = false;
	scanProjectile.paletteIndex = paletteIndex;
	sprite_index = sprScan;
	image_index = 0;
}

//Mic Attack 1 End

if ((attack) and (sprite_index == sprMicAttack1End))
{
	image_index = image_number - 1;
}

//Mic Attack 1

if ((attack) and (sprite_index == sprMicAttack1))
{
	image_index = 0;
}

//Mic Attack Ready 1

if ((attack) and (sprite_index == sprMicAttack1Ready))
{
	if (audio_is_playing(snd_Mic1)) audio_stop_sound(snd_Mic1);
	audio_play_sound(snd_Mic1,0,false);
	canMicFlash = true;
	sprite_index = sprMicAttack1;
	image_index = 0;
}

//Mic Attack 2 End

if ((attack) and (sprite_index == sprMicAttack2End))
{
	image_index = image_number - 1;
}

//Mic Attack 2

if ((attack) and (sprite_index == sprMicAttack2))
{
	image_index = 0;
}

//Mic Attack Ready 2

if ((attack) and (sprite_index == sprMicAttack2Ready))
{
	if (audio_is_playing(snd_Mic2)) audio_stop_sound(snd_Mic2);
	audio_play_sound(snd_Mic2,0,false);
	canMicFlash = true;
	sprite_index = sprMicAttack2;
	image_index = 0;
}

//Mic Attack 3 End

if ((attack) and (sprite_index == sprMicAttack3End))
{
	image_index = image_number - 1;
}

//Mic Attack 3

if ((attack) and (sprite_index == sprMicAttack3))
{
	image_index = 0;
}

//Mic Attack Ready 3

if ((attack) and (sprite_index == sprMicAttack3Ready))
{
	var soundRng = irandom_range(0,99);
	var sound = snd_Mic3;
	if (soundRng == 0) sound = snd_Mic3_Extra1;
	if (audio_is_playing(sound)) audio_stop_sound(sound);
	audio_play_sound(sound,0,false);
	canMicFlash = true;
	sprite_index = sprMicAttack3;
	image_index = 0;
}

//Bouncy

if ((playerCharacter == playerCharacters.bouncy) and ((sprite_index == sprJump) or (sprite_index == sprDuck))) image_index = image_number - 1;