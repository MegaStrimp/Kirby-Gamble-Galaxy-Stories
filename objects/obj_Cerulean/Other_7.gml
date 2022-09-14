///@description Animation End

//Attack Release

if (sprite_index = sprAttackRelease)
{
	attack = false;
	image_index = 0;
}

//Attack Ready

if (sprite_index = sprAttackReady)
{
	hsp = movespeed * dirX;
	sprite_index = sprAttackRelease;
	image_index = 0;
}