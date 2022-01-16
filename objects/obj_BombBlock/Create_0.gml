///@description Initialize Variables

//Event Inherited

event_inherited();

//Other Variables

ability = playerAbilities.none;
object = true;
canExplode = true;
enemy = false;
heavy = true;
inhaleXOffset = (sprite_get_width(sprite_index) / 2);
inhaleYOffset = (sprite_get_height(sprite_index) / 2);
hp = 1;
points = 10;
character = 0;

//Sprites

sprIdle = spr_BombBlock_Normal_Idle;
topWallSprite = spr_BombBlock_Normal_Top;

//Timers

setupTimer = 0;