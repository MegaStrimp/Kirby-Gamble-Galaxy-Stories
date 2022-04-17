/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (pathTimer >= pathTimerEnd)
{
	instance_destroy();
}

old_x = x;
old_y = y; //saves on a function and a division operation for the draw function

x = start_x + (path_get_x(pth_Enemy_GimYo, pathTimer / pathTimerEnd) * dirX);
y = start_y + path_get_y(pth_Enemy_GimYo, pathTimer / pathTimerEnd);

pathTimer++;
var pathVar = pathTimerEndInc;
if (pathTimer > (pathTimerEnd / 2))
{
	pathVar *= -1;
}

pathTimerEnd = clamp(pathTimerEnd + pathVar, 38, 45);
