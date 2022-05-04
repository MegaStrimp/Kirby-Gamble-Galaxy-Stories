///@description Draw

//Draw Aura

if ((isKeyChest) and (open) and (image_index >= image_number - 1)) draw_sprite_ext(sprKeyChestAura,0,x,y - 10,image_xscale,image_yscale * (random_range(.75,1.25)),image_angle,image_blend,image_alpha);

//Draw Self

draw_self();
