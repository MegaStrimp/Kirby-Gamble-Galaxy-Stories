///@description Draw

#region Draw Balls
var bodyDisX =  myBody.x - x;
var bodyDisY = myBody.y - y;
var numpoints = floor((sqrt(sqr(bodyDisX) + sqr(bodyDisY)) / 6));
  
for (var i = 2; i < numpoints; i++)
{
    draw_sprite(sprBalls,0,x + (bodyDisX * i / numpoints),y + (bodyDisY * i / numpoints));
}
#endregion

#region Event Inherited
event_inherited();
#endregion

#region Draw Face
if ((attackNumber == state_idle || attackNumber = state_damaged) && sprFace != noone) draw_sprite_ext(sprFace,sprFaceIndex,x,y,image_xscale,image_yscale,0,c_white,1);
#endregion