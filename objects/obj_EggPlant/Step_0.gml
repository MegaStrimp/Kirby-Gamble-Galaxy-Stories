///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	for (i = 0; i < maxButterfly; i += 1)
	{
	    instance_create_layer(irandom_range(x - (sprite_width / 2) - 24,x + (sprite_width / 2) + 24),irandom_range(y - (sprite_width / 2) + 12,y - (sprite_width / 2) - 24),"Environment",obj_Butterfly);
	}
	setupTimer = -1;
}