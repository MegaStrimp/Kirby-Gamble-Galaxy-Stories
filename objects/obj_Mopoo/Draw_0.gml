///@description Draw

#region Trail
if (global.shaders) pal_swap_set(paletteIndex,drawPaletteFlash,false);
draw_sprite(sprBody,2,xprevious1,yprevious1);
draw_sprite(sprBody,3,xprevious2,yprevious2);
if (global.shaders) pal_swap_reset();
//draw_sprite(sprBody,3,xprevious3,yprevious3);

xprevious1 = lerp(xprevious1,x,.1);
yprevious1 = lerp(yprevious1,y,.1);
xprevious2 = lerp(xprevious2,xprevious1,.1);
yprevious2 = lerp(yprevious2,yprevious1,.1);
xprevious3 = lerp(xprevious3,xprevious2,.1);
yprevious3 = lerp(yprevious3,yprevious2,.1);
#endregion

#region Event Inherited
event_inherited();
#endregion

#region Face
if (global.shaders) pal_swap_set(paletteIndex,drawPaletteFlash,false);
draw_sprite_ext(sprFace,faceIndex,x + ((canShakeX) * drawShakeX),y + ((canShakeY) * drawShakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if (global.shaders) pal_swap_reset();
#endregion