///@description Draw

#region Shake
if (shakeX > 0)
{
	shakeX -= (sign(shakeX)) / 10;
}
else
{
	shakeX = 0;
}

if (shakeY > 0)
{
	shakeY -= (sign(shakeY)) / 10;
}
else
{
	shakeY = 0;
}

var drawShakeX = irandom_range(-shakeX,shakeX);
var drawShakeY = irandom_range(-shakeY,shakeY);
#endregion

#region Draw Self
draw_sprite(sprite_index,image_index,x + drawShakeX,y + drawShakeY);
#endregion