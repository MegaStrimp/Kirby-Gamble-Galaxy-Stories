///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
accel = .4;
decel = .125;
maxSpeed = 2;

//Sprites

mask_index = spr_12Square_Mask;
sprIdle = spr_Skylands_Kirby_Idle;
sprMove = spr_Skylands_Kirby_Move;
sprBullet1 = spr_Skylands_Kirby_Projectile1;
sprBullet2 = spr_Skylands_Kirby_Projectile2;
sprBullet3 = spr_Skylands_Kirby_Projectile3;
sprBulletSpecial = spr_Skylands_Kirby_ProjectileSpecial;

//Other Variables

scale = 1;
dir = 1;
powerUp = 0;
firingDelay = 0;
firingDelayMax = 20;
paletteIndex = spr_Kirby_Normal_Palette_FriendlyPink;
hurt = false;
drawShakeX = 0;
drawShakeY = 0;
scaleExX = 0;
scaleExY = 0;
player = 0;

//Timers

characterSetupTimer = 0;