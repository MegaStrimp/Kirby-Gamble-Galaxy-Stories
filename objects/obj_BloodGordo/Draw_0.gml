///@description Draw

//Draw Aura

var auraSize = sprite_get_width(sprAura);
draw_sprite_ext(sprAura,1,coreX,coreY,radius / auraSize * 2,radius / auraSize * 2,0,c_white,1);

//Event Inherited

event_inherited();