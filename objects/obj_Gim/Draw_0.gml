// Inherit the parent event
event_inherited();

if (yoTimer and yoTimer <= 45)
{
	draw_sprite(spr_Projectile_GimYoyo_Normal, 0, x, y);
	draw_sprite_ext(handHoldClose, 0, x, y, dirX, 1, 0, c_white, 1); //values not finalized
}
else if (yoTimer > 45 and yoTimer <= 75)
{
	draw_sprite(spr_Projectile_GimYoyo_Normal, 0, x, y);
	draw_sprite_ext(handHoldAway, 0, x, y, dirX, 1, 0, c_white, 1);
}
else if (yoTimer > 75)
{
	if (throwyo)
	{
		var arr = [handFlingDown, handFlingMiddle, handFlingUp];
	
		var result = floor((throwyo.pathTimer / throwyo.pathTimerEnd) * 2.9999);
		draw_sprite_ext(arr[result], 0, x, y, dirX, 1, 0, c_white, 1); //set positions later, sleep now
	}
}


/* 
* yandev LMAO
* actually i met some asshole on ifunny who was complaining about a nested if statement in a python discord bot
* he was complaining about memory on a PYTHON program and acting like a nested if statement CHECKING IF VARIABLES ARE INITIALIZED was causing a memory leak, so absurd
* it's not really related to the code but I had to talk about this since I think the poor guy was confused, he was babbling about how important memory management was to a literal C developer
* memory leaks in python, that's like worrying about holes in cheese
*/

