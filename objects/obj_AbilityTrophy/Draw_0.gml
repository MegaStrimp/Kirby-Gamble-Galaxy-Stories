///@description Draw

//Draw Self

draw_self();

//Draw Items

if (hasAura) draw_sprite(spr_Particle_Aura1,0,x,y - 19);
draw_sprite(sprItem,itemAnim,x,y + itemYOffset - 19);