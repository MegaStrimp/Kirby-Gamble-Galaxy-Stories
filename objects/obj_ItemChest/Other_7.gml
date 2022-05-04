///@description Animation End

//Chest Open

if (sprite_index == sprChestOpen)
{
	if (destroyTimer == -1)
	{
		blinkTimer = blinkTimerMax;
		destroyTimer = destroyTimerMax;
	}
	image_index = image_number - 1;
}
