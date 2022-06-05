///@description Draw

//Draw Aura

var auraMult = 0;
if (!global.pause) auraMult = random_range(.75,1.25);

if ((isKeyChest) and (open) and (image_index >= image_number - 1)) draw_sprite_ext(sprKeyChestAura,0,x,y - 7,image_xscale,image_yscale * auraMult,image_angle,image_blend,image_alpha);

//Draw Self

draw_self();
