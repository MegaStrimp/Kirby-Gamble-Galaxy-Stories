///@description End Step

#region Follow Owner
if ((followOwner) and (!active))
{
	x = owner.x + followOffsetX;
	y = owner.y + followOffsetY;
}
#endregion