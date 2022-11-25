///@description Main

with (obj_Player) invincible = true;
#region Fade Timer
if (fadeTimer > 0)
{
	fadeTimer -= 1;
}
else if (fadeTimer == 0)
{
	var fade = instance_create_depth(x,y,depth,obj_Fade);
	fade.alphaSpd = alphaSpd;
	fade.targetRoom = targetRoom;
	instance_destroy();
	fadeTimer = -1;
}
#endregion