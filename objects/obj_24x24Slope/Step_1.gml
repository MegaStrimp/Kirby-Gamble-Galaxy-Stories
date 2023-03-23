///@description Begin Step

#region Slope Y Set
if (!slopeYSet)
{
	if (sign(image_yscale) == 1) y -= 4;
	slopeYSet = true;
}
#endregion

#region Event Inherited
event_inherited();
#endregion