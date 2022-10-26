///@description Draw

#region Event Inherited
event_inherited();
#endregion

#region Draw Aura
draw_sprite_ext(sprAura,auraIndex,x + ((canShakeX) * drawShakeX),y + ((canShakeY) * drawShakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
#endregion

#region Draw Eye
draw_sprite_ext(sprEye,0,x + ((canShakeX) * drawShakeX),y + ((canShakeY) * drawShakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
#endregion

#region Debug
/*
draw_text(x,y - 12,string(state);
*/
#endregion
