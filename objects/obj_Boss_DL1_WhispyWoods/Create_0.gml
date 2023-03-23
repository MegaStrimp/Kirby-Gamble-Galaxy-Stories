///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Physics
#endregion

#region Sprites
sprBossIcon = spr_Healthbar_Boss_Icon_DL1_WhispyWoods;
sprBossText = spr_Healthbar_Boss_Text_DL1_WhispyWoods;

sprIdle = spr_DL1_WhispyWoods_Idle;
sprBlink = spr_DL1_WhispyWoods_Blink;
sprSpit = spr_DL1_WhispyWoods_Spit;
sprHurt = spr_DL1_WhispyWoods_Hurt;
sprDeath = spr_DL1_WhispyWoods_Death;
#endregion

#region Other Variables
hp = 400;
dmg = 1;
points = 1000;
scale = 2;
isBoss = true;
hbActive = false;
healthbarIndex = 5;
hbSetup = true;
hasXKnockback = false;
hasYKnockback = false;
hurtable = false;
hurtFunction = func_HurtBossDefault;
phase = 0;
spawnHealthbar = true;
attackNumber = -1;
attackState = 0;
spawnState = 0;

hasGravity = false;
#endregion

#region Timers
spawnStateTimer = -1;
phaseChangeTimer = -1;
attackChooseTimer = -1;
attackChooseTimerMax = 180;
#endregion

#region Collision Hitbox
collisionHitbox = instance_create_depth(x + 12,y + 88,depth,obj_Wall);
collisionHitbox.owner = id;
collisionHitbox.ownerScale = 1;
collisionHitbox.ownerXOffset = 12;
collisionHitbox.ownerYOffset = 88;
collisionHitbox.enemyCollisionHitbox = true;
collisionHitbox.mask_index = spr_DL1_WhispyWoods_Mask;
#endregion