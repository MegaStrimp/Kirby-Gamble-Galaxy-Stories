///@description Initialize Variables

//Event Inherited

event_inherited();

//Sprites

sprIdle = spr_BigStarBlock_Normal_Idle;
topWallSprite = spr_BigStarBlock_Normal_Top;

//Other Variables

character = 0;
sprHurt = spr_Particle_BigStar_Yellow;
ability = playerAbilities.none;
object = true;
enemy = false;
heavy = true;
inhaleXOffset = (sprite_get_width(sprite_index) / 2);
inhaleYOffset = (sprite_get_height(sprite_index) / 2);
hp = 1;
topWallMask = spr_48x4Originless_Mask;
points = 50;
storedItem = obj_PointStar;
pointStarCharacter = 1;

//Timers

setupTimer = 0;