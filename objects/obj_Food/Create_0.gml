///@description Initialize Variables

//Randomize

randomize();

//Physics

hsp = 0;
vsp = 0;
grav = .2;
gravLimit = 5;
accel = .2;
spd = 0;
spdMax = 2;

//Other Variables

image_index = irandom_range(0,image_number - 1);
var rng = irandom_range(0,299);
switch (rng)
{
	case 0:
	sprite_index = spr_Food_AmongUs;
	break;
	
	case 1:
	sprite_index = spr_Food_FishTaco;
	break;
}
sprHurt = -1;
points = 10;
ability = playerAbilities.none;
enemy = false;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
hasGravity = true;
hasXCollision = true;
hasYCollision = true;
collisionX = obj_ParentWall;
collisionY = obj_ParentWall;