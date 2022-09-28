///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Physics
movespeed = 1.5;
jumpspeed = 5;
gravNormal = .2;
gravLimitNormal = 5;
#endregion

#region Sprites
sprTreeIdle = spr_WhispyWoods_Normal_TreeIdle;
sprBark = spr_WhispyWoods_Normal_TreeBark;
sprIdle = spr_WhispyWoods_Normal_Idle;
sprBlink = spr_WhispyWoods_Normal_Blink;
sprSpit = spr_WhispyWoods_Normal_Spit;
sprBigSpit = spr_WhispyWoods_Normal_BigSpit;
sprHurt = spr_WhispyWoods_Normal_Hurt;
sprDeath = spr_WhispyWoods_Normal_Death;
sprGamble = spr_WhispyWoods_Normal_Gamble;
sprGambleLeaf = spr_WhispyWoods_Normal_GambleLeaf;
sprApple = spr_WhispyWoods_Normal_Apple;

sprBossIcon = spr_Healthbar_Boss_Icon_WhispyWoods;
sprBossText = spr_Healthbar_Boss_Text_WhispyWoods;
#endregion

#region Other Variables
hp = 700;
dmg = 1;
points = 200;
canShakeX = false;
canShakeY = false;
isBoss = true;
healthbarIndex = 3;
hasXKnockback = false;
hasYKnockback = false;
hurtable = false;

phase = 0;
faceSprite = sprIdle;
faceIndex = 0;
gambleIndex = 0;
gambleShake = false;
spawnHealthbar = true;
attackNumber = -1;
idleAnimation = false;

airpuffCount = 0;
airpuffCountMax = 3;

spikeCount = 0;
spikeCountMax = 4;

throwObjectChanceMax[0] = 250; //Apple
throwObjectChance[0] = throwObjectChanceMax[0];
throwObjectChanceMax[1] = 75; //Gordo
throwObjectChance[1] = throwObjectChanceMax[1];
throwObjectChanceMax[2] = 50; //Como
throwObjectChanceMax[2] = 0; //Como
throwObjectChance[2] = throwObjectChanceMax[2];
throwObjectChanceMax[3] = 25; //Waddle Dee
throwObjectChance[3] = throwObjectChanceMax[3];
throwObjectList = -1;
throwObjectCount = 0;

bigAirpuffState = 0;

inhaleState = 0;

spawnedDeathFade = false;
#endregion

#region Timers
gambleShakeTimerMax = 150;
gambleShakeTimer = gambleShakeTimerMax;
idleAnimationTimer = 0;
idleAnimationTimerMax = 90;
phaseChangeTimer = -1;
attackChooseTimer = -1;
attackChooseTimerMax = 180;
spikeTimer = -1;
spikeTimerMax = 60;
airpuffTimer = -1;
airpuffTimerMax = 20;
throwObjectTimer = -1;
throwObjectTimerMax = 45;
bigAirpuffTimer = -1;
inhaleTimer = -1;
#endregion

collisionHitbox = instance_create_depth(x,y,depth,obj_Wall);
collisionHitbox.owner = id;
collisionHitbox.enemyCollisionHitbox = true;
collisionHitbox.mask_index = sprTreeIdle;