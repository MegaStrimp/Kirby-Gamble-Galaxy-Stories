///@description Draw

//Draw Aura

if ((isKeyChestKey) and (active)) draw_sprite_ext(spr_KeyChest_Normal_Key_Aura,0,x,y,image_xscale,image_yscale,auraAngle,image_blend,image_alpha);

//Draw Self

draw_sprite_ext(sprite_index,image_index,x + irandom_range(-shake,shake),y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);