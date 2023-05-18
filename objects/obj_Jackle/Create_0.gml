///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

//Sprites

mask_index = spr_24Square_Mask;

sprIdle = spr_Jackle_Normal_Idle;
sprReady = spr_Jackle_Normal_Ready;
sprAttack = spr_Jackle_Normal_Attack;
sprReload = spr_Jackle_Normal_Reload;
sprHurt = spr_Jackle_Normal_Hurt;

//Other Variables

paletteIndex = spr_Jackle_Normal_Palette_SpinningCutter;
hp = jackle_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.cutter;
points = jackle_Points;
hasXKnockback = false;
hasYKnockback = false;
attack = false;
attackDir = 0;

//Timers

attackTimerMax = 90;
attackTimer = attackTimerMax;