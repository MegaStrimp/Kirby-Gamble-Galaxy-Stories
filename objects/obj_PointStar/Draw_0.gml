///@description Draw

//Draw Aura

if (hasAura) draw_sprite(spr_Particle_Aura1,0,x,y);

//Draw Self

if (!flash) draw_sprite_ext(sprite_index,image_index,x + irandom_range(-shake,shake),y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);