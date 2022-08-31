///@description Draw

//Draw Self

draw_self();

//Draw Items

if (hasAura) draw_sprite_ext(spr_Particle_Aura1,0,x,y - 19,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprItem,itemAnim,x,y + itemYOffset - 19,image_xscale,image_yscale,image_angle,image_blend,imageAlpha);