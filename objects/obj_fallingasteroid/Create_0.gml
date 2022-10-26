///@description Initialize Variables

#region Randomize
randomize();
#endregion

#region Physics
spd = 2;
angle = 270;
#endregion

#region Sprites
sprIdle = spr_FallingAsteroid_Normal_Idle;
sprFire = spr_FallingAsteroid_AsteroidFields_Fire;
sprDebris = spr_FallingAsteroid_Normal_Debris;
#endregion

#region Other Variables
character = 1;
dirX = 1;
dmg = 60;
fireIndex = 0;
#endregion

#region Timers
setupTimer = 0;
#endregion