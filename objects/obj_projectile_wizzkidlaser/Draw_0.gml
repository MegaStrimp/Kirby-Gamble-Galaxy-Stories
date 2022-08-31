/// @description Draw

//Draw Start

draw_sprite_ext(sprStart,imageIndex,x,y,dirX,1,image_angle,image_blend,image_alpha);

//Draw Loop

draw_sprite_ext(sprLoop,imageIndex,x + (sprite_get_width(sprStart) * dirX),y,((laserWidth - (sprite_get_width(sprStart))) / (sprite_get_width(sprLoop))) * dirX,image_yscale,image_angle,image_blend,image_alpha);