///@description Main

//Movement

textX += .25;

switch (state)
{
	case 0:
	y += .5;
	break;
	
	case 1:
	x -= .5;
	break;
	
	case 2:
	x -= .5;
	if (spaceAlpha < 1) spaceAlpha += .02;
	spaceScale += .0005;
	break;
}

//State Timer

if (stateTimer > 0)
{
	stateTimer -= 1;
}
else if (stateTimer == 0)
{
	stateTimer = -1;
	switch (state)
	{
		case 0:
		x = 126;
		y = 480;
		image_xscale = 6;
		image_yscale = 6;
		stateTimer = 360;
		break;
		
		case 1:
		stateTimer = 360;
		break;
		
		case 2:
		global.playerLives = 3;
		global.pause = false;
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = rm_StageSelect;
		fade.pausable = false;
		break;
	}
	state += 1;
}