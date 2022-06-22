///@description Main

#region Create Stars
if (starTrigger)
{
	var roomWidth = floor(room_width / 24) + 1;
	var roomHeight = floor(room_height / 24) + 1;
	for (var i = 0; i < roomWidth; i++)
	{
		for (var h = 0; h < roomHeight; h++)
		{
			var rng = irandom_range(0,99);
			var chosenTile = 0;
			for (var j = 9; j > 0; j--)
			{
				if (rng < weight * j)
				{
					chosenTile = j;
				}
			}
			tilemap_set(layer_tilemap_get_id("StarTiles"),chosenTile,i,h);
		}
	}
	starTrigger = false;
}
#endregion