///@description Initialize Variables

//Other Variables

state = 0;
textX = 0;
spaceAlpha = 0;
spaceScale = 1;
image_xscale = 4;
image_yscale = 4;

//Particles

for (var i = 0; i < 50; i++)
{
	var par = instance_create_depth((i * 12),irandom_range(-72,-12),depth - 1,obj_Particle);
	par.sprite_index = spr_FallingLeaf_Normal_Idle;
	par.direction = irandom_range(250,290);
	par.image_blend = choose(c_green,c_yellow,c_lime,c_blue,c_purple,c_aqua);
	par.image_speed = random_range(.75,1.25);
	par.scale = random_range(2,4);
	par.spdBuiltIn = random_range(1,3);
	par.destroyAfterAnimation = false;
}

//Timers

stateTimer = 480;