///@description End Step

//Follow Owner

if (instance_exists(parasolOwner))
{
	if (state == 0)
	{
		x = parasolOwner.x + parasolX;
		y = parasolOwner.y - (sprite_get_height(parasolOwner.sprite_index) / 2) - parasolY;
		if (!parasolOwner.parasol) state = 1;
	}
}
else
{
	state = 1;
}