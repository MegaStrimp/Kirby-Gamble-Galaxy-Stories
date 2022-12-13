///@description Draw

//Draw Items

if (abilityTrophyTimer == -1) draw_sprite_ext(spr_Particle_Aura5,0,x,y - 12,itemScale,itemScale,image_angle,image_blend,image_alpha);
if (abilityTrophyTimer == -1) draw_sprite_ext(sprItem,itemAnim,x,y - 12,itemScale,itemScale,image_angle,image_blend,imageAlpha);
draw_sprite_ext(sprBubble,0,x,y - 12,image_xscale,image_yscale,image_angle,image_blend,imageAlpha);

//Draw Self

draw_self();