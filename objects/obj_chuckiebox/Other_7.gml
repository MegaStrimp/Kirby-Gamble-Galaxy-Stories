///@description Animation End

if (sprite_index == sprBoxOpen)
{
	image_index = image_number - 1;
}

if (sprite_index == sprBoxClose)
{
	if (chuckieCount <= 0)
	{
		sprite_index = sprBoxDead;
	}
	else
	{
		sprite_index = sprBox;
	}
	image_index = 0;
}