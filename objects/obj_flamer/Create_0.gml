///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

movespeed = 2;

//Sprites

mask_index = spr_Flamer_Normal_Idle;

sprIdle = spr_Flamer_Normal_Idle;
sprReady = spr_Flamer_Normal_Ready;
sprAttack = spr_Flamer_Normal_Attack;
sprHurt = spr_Flamer_Normal_Hurt;
sprAttackReady = spr_Flamer_Normal_Attack;


attackAlarm = room_speed/12;//if the enemy is in line with the player during the attack state for this amount of time, wind back and attack
windupAlarm = room_speed/4;






//Other Variables
viewRange = 64;
paletteIndex = spr_Flamer_Normal_Palette_FieryRed;
hp = flamer_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.fire;
points = flamer_Points;
hasXCollision = false;
hasYCollision = false;
hasXKnockback = false;
hasYKnockback = false;
clampPositionX = false;
clampPositionY = false;
attackState = 0;
moveDir = 0;
playerDir = 0;

//Timers

attackTimerMax = 210;
attackTimerMin = 30;
attackTimer = attackTimerMax;
particleTimer = -1;
particleTimerMax = 15;