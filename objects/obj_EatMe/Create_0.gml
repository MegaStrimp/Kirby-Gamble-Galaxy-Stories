///@description Initialize Variables

#region Physics
accel = .3;
spd = 0;
spdMax = 3;
#endregion

#region Enums
enum eatMeTypes
{
	none,
	onion,
	machMissile,
	pluid,
	seashellBoomerang
}
#endregion

#region Other Variables
points = 0;
dir = 1;
state = 0;
inhaleType = 0;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
ability = playerAbilities.none;
owner = id;
rotateSpd = 0;
paletteIndex = -1;
squadType = -1;
cannedFood = false;
amongUs = false;
fishTaco = false;
dirX = 1;
dirY = 1;
#endregion