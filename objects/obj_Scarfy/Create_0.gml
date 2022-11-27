///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .05;
movespeed = .75;
jumpspeed = 1.5;
gravNormal = .05;
gravLimitNormal = 1.25;

//Sprites

mask_index = spr_16Square_Mask;

sprCalmIdle = spr_Scarfy_Normal_CalmIdle;
sprCalmFly = spr_Scarfy_Normal_CalmFly;
sprCalmHurt = spr_Scarfy_Normal_CalmHurt;
sprMadFly = spr_Scarfy_Normal_MadFly;
sprMadHurt = spr_Scarfy_Normal_MadHurt;
sprHurt = sprCalmHurt;

//Other Variables

paletteIndex = spr_Scarfy_Normal_Palette_DeadlyOrange;
hp = 16;
dmg = 1;
ability = playerAbilities.crash;
points = 1000;
hasGravity = false;
hasXCollision = false;
hasYCollision = false;
clampPositionX = false;
clampPositionY = false;
//objectOnDeath = true;
//objectOnDeathObj = obj_Projectile_ExplosionMask;
attack = false;
attackState = 0;
imageSpeed = 1;
particleCount = 0;
canTurnX = true;
canTurnY = true;
hurtRecover = 2;

//Timers

particleTimer = -1;
particleTimerMax = 4;
attackTimerMax = 300;
attackTimer = attackTimerMax;
canTurnXTimer = -1;
canTurnXTimerMax = 15;
canTurnYTimer = -1;
canTurnYTimerMax = 15;

// Other

function ScarfyHurt(hurtSource)
{
	sprite_index = sprHurt;
	
	if (!attack)
	{
		hp = 16 + (hurtSource.dmg / 4);
		attack = true;
		imageSpeed = 0.5; // it's hack time
	}
	
	return true;
}

hurtFunction = ScarfyHurt;