///@description Draw

#region Event Inherited
event_inherited();
#endregion

#region Mask
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0,room_width,room_height,false);

draw_set_alpha(1);
draw_sprite_ext(sprMask,image_index,x + drawShakeX,y + drawShakeY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

draw_sprite(spr_Texture_Dreamy,0,x + drawShakeX,y + drawShakeY);
draw_sprite(spr_Texture_DreamyStars,0,x + drawShakeX,y + drawShakeY);

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
#endregion

#region Outline
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0,room_width,room_height,false);

draw_set_alpha(1);
draw_sprite_ext(sprOutline,image_index,x + drawShakeX,y + drawShakeY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

draw_sprite_ext(spr_Texture_Rainbow,0,x + drawShakeX,y + drawShakeY,1.25,1.25,outlineAngle,image_blend,image_alpha);

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
#endregion

#region Eyes
draw_sprite_ext(sprEyes,image_index,x + drawShakeX,y + drawShakeY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion