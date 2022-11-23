///@description Destroy

//Event Inherited

event_inherited();

//Particles

if ((!charge) and (place_meeting(x,y,obj_Wall)))
{
	if (!enemy)
	{
		var par = instance_create_depth(x,y,depth - 1,obj_Particle);
		par.sprite_index = sprDestroy;
		par.direction = 270 + (dirX * 25);
		par.spdBuiltIn = 1;
		par.destroyAfterAnimation = true;
		par.paletteSpriteIndex = paletteIndex;
		par.paletteIndex = 1;
	}
	
	for (var i = 0; i < 4; i++)
	{
		var par = instance_create_depth(x,y,depth - 1,obj_Particle);
	    par.sprite_index = spr_Particle_SmallStar;
		par.direction = 45 + (90 * i);
		par.spdBuiltIn = 5;
		par.fricSpd = .3;
		par.destroyTimer = 22;
	}
}