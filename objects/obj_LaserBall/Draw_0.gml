///@description Draw

//Event Inherited

event_inherited();

//Draw Aura

draw_sprite_ext(sprAura,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);

//Draw Face

draw_sprite_ext(sprFace,image_index,x + drawShakeX + faceX,y + drawShakeY - 2,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
