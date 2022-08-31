///@description Animation End

//Destroy

var parX = camera_get_view_x(gameView) + camera_get_view_width(gameView) - 24;
if (dirX == -1) parX = camera_get_view_x(gameView) + 24;

for (var i = 0; i < 3; i++)
{
	var par = instance_create_depth(parX,y + 12 - (i * 12),depth - 1,obj_RecoilStar);
	par.dir = dirX;
	par.hurtsObject = false;
	par.hurtsEnemy = false;
	par.canBeInhaled = true;
	par.destroyTimer = 25 + (65 * (i == 1));
}
instance_destroy();