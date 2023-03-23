///@description Main

//Spawn Timer

var x1 = camera_get_view_x(gameView) - spawnerRange;
var y1 = camera_get_view_y(gameView) - spawnerRange;
var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + spawnerRange;
var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + spawnerRange;

var x1Max = camera_get_view_x(gameView) - (spawnerRange * 2);
var y1Max = camera_get_view_y(gameView) - (spawnerRange * 2);
var x2Max = camera_get_view_x(gameView) + camera_get_view_width(gameView) + (spawnerRange * 2);
var y2Max = camera_get_view_y(gameView) + camera_get_view_height(gameView) + (spawnerRange * 2);

if ((spawn) and (!point_in_rectangle(x,y,x1,y1,x2,y2)) and (point_in_rectangle(x,y,x1Max,y1Max,x2Max,y2Max)))
{
	spawnTimer = 0;
    spawn = false;
}

if (spawnTimer > 0)
{
	spawnTimer -= 1;
}
else if (spawnTimer == 0)
{
	var spawnedEnemy = instance_create_depth(x,y,depth,obj_LaserBall);
	spawnedEnemy.hasSpawner = true;
	spawnedEnemy.spawner = id;
	spawnedEnemy.spawnerRange = (spawnerRange * 2);
	spawnedEnemy.paletteIndex = paletteIndex;
	spawnedEnemy.accel = accel;
	spawnedEnemy.movespeed = movespeed;
	spawnedEnemy.jumpspeed = jumpspeed;
	spawnedEnemy.gravNormal = gravNormal;
	spawnedEnemy.gravLimitNormal = gravLimitNormal;
	spawnedEnemy.character = character;
	switch (character)
	{
		//Normal
		
		case 0:
		spawnedEnemy.sprIdle = spr_LaserBall_Normal_Idle;
		spawnedEnemy.sprFace = spr_LaserBall_Normal_Face;
		spawnedEnemy.sprAttack = spr_LaserBall_Normal_Attack;
		spawnedEnemy.sprHurt = spr_LaserBall_Normal_Hurt;
		
		spawnedEnemy.sprAura1Idle = spr_LaserBall_Normal_Aura1_Idle;
		spawnedEnemy.sprAura1Attack = spr_LaserBall_Normal_Aura1_Attack;
		spawnedEnemy.sprAura1Hurt = spr_LaserBall_Normal_Aura1_Hurt;
		spawnedEnemy.sprAura2Idle = spr_LaserBall_Normal_Aura2_Idle;
		spawnedEnemy.sprAura2Attack = spr_LaserBall_Normal_Aura2_Attack;
		spawnedEnemy.sprAura2Hurt = spr_LaserBall_Normal_Aura2_Hurt;
		spawnedEnemy.sprAura3Idle = spr_LaserBall_Normal_Aura3_Idle;
		spawnedEnemy.sprAura3Attack = spr_LaserBall_Normal_Aura3_Attack;
		spawnedEnemy.sprAura3Hurt = spr_LaserBall_Normal_Aura3_Hurt;
		spawnedEnemy.sprAura4Idle = spr_LaserBall_Normal_Aura4_Idle;
		spawnedEnemy.sprAura4Attack = spr_LaserBall_Normal_Aura4_Attack;
		spawnedEnemy.sprAura4Hurt = spr_LaserBall_Normal_Aura4_Hurt;
		break;
	}
	spawnedEnemy.sprite_index = spawnedEnemy.sprIdle;
	spawnedEnemy.state = state;
	spawnedEnemy.hp = hp;
	spawnedEnemy.dmg = dmg;
	spawnedEnemy.ability = ability;
	spawnedEnemy.points = points;
	spawnedEnemy.hurtable = hurtable;
	spawnedEnemy.hasGravity = hasGravity;
	spawnedEnemy.heavy = heavy;
	spawnedEnemy.inhaleXOffset = inhaleXOffset;
	spawnedEnemy.inhaleYOffset = inhaleYOffset;
	spawnedEnemy.parasol = parasol;
	spawnedEnemy.parasolObject = -1;
	spawnedEnemy.parasolX = parasolX;
	spawnedEnemy.parasolY = parasolY;
	spawnedEnemy.scale = scale;
	spawnedEnemy.dirX = dirX;
	spawnedEnemy.dirY = dirY;
	spawnedEnemy.walkDirX = walkDirX;
	spawnedEnemy.walkDirY = walkDirY;
	spawnedEnemy.imageAngle = imageAngle;
	spawnedEnemy.hasXCollision = hasXCollision;
	spawnedEnemy.hasYCollision = hasYCollision;
	spawnedEnemy.clampPositionX = clampPositionX;
	spawnedEnemy.clampPositionY = clampPositionY;
	spawnedEnemy.offScreenTurning = offScreenTurning;
	spawnedEnemy.collisionX = collisionX;
	spawnedEnemy.collisionY = collisionY;
	spawnedEnemy.hasXKnockback = hasXKnockback;
	spawnedEnemy.hasYKnockback = hasYKnockback;
	spawnedEnemy.deathOnBottom = deathOnBottom;
	spawnedEnemy.objectOnDeath = objectOnDeath;
	spawnedEnemy.objectOnDeathObj = objectOnDeathObj;
	spawnedEnemy.groundFailsafe = groundFailsafe;
	spawnedEnemy.attackCountMax = attackCountMax;
	spawnedEnemy.activateRange = activateRange;
	spawnedEnemy.moveAngleLimitMax = moveAngleLimitMax;
	spawnedEnemy.attackDir = attackDir;
	spawnedEnemy.spawnTimer = spawnTimer;
	spawnedEnemy.attackTimer = attackTimer;
	spawnedEnemy.attackTimerMax = attackTimerMax;
	spawnedEnemy.auraTimerMax = auraTimerMax;
	spawnedEnemy.auraTimer = auraTimer;
	spawnedEnemy.canTurnXTimer = canTurnXTimer;
	spawnedEnemy.canTurnXTimerMax = canTurnXTimerMax;
	spawnedEnemy.canTurnYTimer = canTurnYTimer;
	spawnedEnemy.canTurnYTimerMax = canTurnYTimerMax;
	spawnTimer = -1;
}
