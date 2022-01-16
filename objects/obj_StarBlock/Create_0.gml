///@description Initialize Variables

//Event Inherited

event_inherited();

//Sprites

sprIdle = spr_StarBlock_Normal_Idle;
topWallSprite = spr_StarBlock_Normal_Top;
sprMidOrigin = spr_StarBlock_Normal_MidOrigin;
sprHurt = spr_Particle_BigStar_Yellow;

//Other Variables

character = 0;
ability = playerAbilities.none;
object = true;
enemy = false;
heavy = true;
inhaleXOffset = (sprite_get_width(sprite_index) / 2);
inhaleYOffset = (sprite_get_height(sprite_index) / 2);
hp = 1;
points = 10;
storedItem = obj_PointStar;
pointStarCharacter = 0;

//Timers

setupTimer = 0;