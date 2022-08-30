///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Randomize
randomize();
#endregion

#region Physics
decel = .05;
movespeed = 2;
jumpspeed = 4;
gravNormal = .2;
gravLimitNormal = 5;
#endregion

#region Sprites
sprIdle = spr_Wizzkid_Normal_Idle;
sprIdleHat = spr_PoppyBrosSr_Normal_IdleHat;
sprAttack = spr_PoppyBrosSr_Normal_Attack;
sprAttackHat = spr_PoppyBrosSr_Normal_AttackHat;
sprDash = spr_PoppyBrosSr_Normal_Dash;
sprHand = spr_PoppyBrosSr_Normal_Hand;
sprHurt = spr_PoppyBrosSr_Normal_Hurt;
sprDeath = spr_PoppyBrosSr_Normal_Death;

sprBossIcon = spr_Healthbar_Boss_Icon_Wizzkid;
#endregion

#region Other Variables
paletteIndex = spr_PoppyBrosSr_Normal_Palette_BlueBomber;
hp = 153;
dmg = 1;
ability = playerAbilities.mysticBeam;
points = 2000;
isMiniBoss = true;
hbSetup = true;
healthbarIndex = 2;
hasXKnockback = false;
hasYKnockback = false;
hasDeathKnockback = false;

slideTargetX = -1;
attack = false;
attackNumber = -1;
isAttacking = false;

collisionX = obj_EnemyWall;
#endregion

#region Timers
attackReadyTimer = -1;
attackStopTimer = -1;
slideTimer = -1;
slideTimerMax = 70;
#endregion
