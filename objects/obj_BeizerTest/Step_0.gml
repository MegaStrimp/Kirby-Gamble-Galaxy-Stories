//	Start bouncing when space is pressed
if (keyboard_check_pressed(vk_space) && !active) {
	active = true;
}

//	Set x speed based on number of bounces
switch (bounces) {
	case 1:	x2speed = x2moveSpeed;	break;
	case 3: x2speed = -x2moveSpeed; break;
	default:	x2speed = 0;		break;
}

//	Step head bouncing
if (active) {
	xarray[2] += x2speed;

	yarray[2] += y2speed;
	y2speed += y2grav;

	if (yarray[2] >= 0) {
		yarray[2] = 0;
		y2speed = y2jumpSpeed;
		bounces++;
		
		//	stop bouncing after 3 bounces
		if (bounces > 3) {
			active = false;
			bounces = 0;
		}
	}
}
else {
	x2speed = 0;
	y2speed = 0;
}

//	Set point 2 coordinates based on head position
xarray[1] = xarray[2] * x1tox2factor;
yarray[1] = xarray[2] * y1tox2factor;
