///@description Main

if (!global.pause)
{
	image_alpha -= .05;
	if (image_alpha <= 0) instance_destroy();
}