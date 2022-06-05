///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Randomize
randomize();
#endregion

#region Physics
accel = .015;
movespeed = .75;
jumpspeed = 3;
gravNormal = .2;
gravLimitNormal = 4;
#endregion

#region Sprites
sprIdle = spr_PoppyBrosSr_Normal_Idle;
sprIdleHat = spr_PoppyBrosSr_Normal_IdleHat;
sprAttack = spr_PoppyBrosSr_Normal_Attack;
sprAttackHat = spr_PoppyBrosSr_Normal_AttackHat;
sprDash = spr_PoppyBrosSr_Normal_Dash;
sprHand = spr_PoppyBrosSr_Normal_Hand;
sprHurt = spr_PoppyBrosSr_Normal_Hurt;
sprDeath = spr_PoppyBrosSr_Normal_Death;
#endregion

#region Other Variables
paletteIndex = spr_PoppyBrosSr_Normal_Palette_BlueBomber;
hp = 120;
dmg = 1;
ability = playerAbilities.bomb;
points = 2000;
attack = false;
attackNumber = -1;
isAttacking = false;
jumpCount = 0;
dashDir = 1;
walkDirX = -1;
hatIndex = 0;
isMiniBoss = true;
hbSetup = true;
hasXKnockback = false;
hasYKnockback = false;
hasDeathKnockback = false;
handIndex = 0;
handX = 0;
handY = 0;
handPath = 0;
handXOffset = 18;
handYOffset = -4;
#endregion

#region Timers
attackReadyTimer = -1;
attackStopTimer = -1;
dashStopTimer = -1;
dashStopTimerMax = 90;
bombThrowTimer = -1;
bombThrowTimerMax = 30;
#endregion
