///@description Draw

//Aura

//if ((!isBubble) and (hasAura)) draw_sprite(spr_Particle_Aura1,0,x,y);

//Draw Self

draw_self();

//Bubble

if (isBubble) draw_sprite_ext(spr_AbilityBubble,image_index,x,y,image_xscale,image_yscale,0,image_blend,image_alpha);

//Debug

/*
draw_text(x,y - 12,string(dir * (hsp + 1)));