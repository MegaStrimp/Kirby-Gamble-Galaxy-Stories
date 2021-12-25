///@description Draw

//Draw Object

if (canBeInteracted)
{
	var alpha = .5;
	var blend = c_white;
	if (collidingSpawner) blend = c_red;
	draw_sprite_ext(spawnedSprite,0,mouseX,mouseY,dirX,image_yscale,image_angle,blend,alpha);
}