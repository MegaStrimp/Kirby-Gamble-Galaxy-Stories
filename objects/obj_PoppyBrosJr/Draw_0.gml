///@description Draw

//Draw Hand

if (attack) draw_sprite_ext(sprHand,image_index,x + handXOffset + drawShakeX,y + handYOffset + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);

//Draw Bomb

if ((weaponIndex == 1) and (!attack)) draw_sprite_ext(spr_Projectile_Bomb_Normal,image_index,x - (7 * dirX) + drawShakeX,y - 11 + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);

//Event Inherited

event_inherited();