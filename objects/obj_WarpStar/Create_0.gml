///@description Initialize Variables

//Physics

vsp = 0;
accel = .01;
jumpspeed = .3;
pathSpd = 6;

//Sprites

sprIdle = spr_WarpStar_Normal_Idle;
sprAura = spr_Particle_WarpStarAura_Yellow;
sprTrail = spr_Particle_WarpStarTrail_Yellow;

//Enums

enum warpStarStates
{
	goToRoom,
	crash
}

//Other Variables

character = 0;
active = false;
state = warpStarStates.goToRoom;
targetRoom = rm_Setup;
warpStarPath = pth_WarpStar_Test;
walkDirY = 1;

//Timers

setupTimer = 0;
particleTimer = -1;
particleTimerMax = 2;