///@description Draw

//Aura

if (hasAura) draw_sprite(spr_Particle_Aura1,0,x,y);

//Draw Self

draw_self();

//Debug

/*
draw_text(x,y - 12,string(dir * (hsp + 1)));