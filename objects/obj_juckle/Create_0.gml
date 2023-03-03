///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

//Sprites

mask_index = spr_24Square_Mask;

sprIdle = spr_Juckle_Normal_Idle;
sprReady = spr_Juckle_Normal_Ready;
sprAttack = spr_Juckle_Normal_Attack;
sprReload = spr_Juckle_Normal_Reload;
sprHurt = spr_Juckle_Normal_Hurt;

//Other Variables

paletteIndex = spr_Juckle_Normal_Palette_SpinningCutter;
hp = juckle_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.cutter;
points = juckle_Points;
hasXKnockback = false;
hasYKnockback = false;
attack = false;
attackDir = 0;

//Timers

attackTimerMax = 90;
attackTimer = attackTimerMax;