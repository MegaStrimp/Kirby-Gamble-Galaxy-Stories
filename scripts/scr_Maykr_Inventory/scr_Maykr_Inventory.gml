///description Maykr Inventory
///param {string} maykrLayer Which layer to check.

function scr_Maykr_Inventory(argument0,argument1)
{
	var maykrLayer = argument0;
	var maykrPage = argument1;
	for (var i = 0; i < 48; i++) maykrInventory[i] = -1;
	
	switch (maykrLayer)
	{
		case "collision":
		switch (maykrPage)
		{
			case 0:
			var i = 0;
			maykrInventory[i] = "debugWall";
			i += 1;
			maykrInventory[i] = "asteroidFieldsRedFront";
			i += 1;
			maykrInventory[i] = "asteroidFieldsGreenFront";
			i += 1;
			maykrInventory[i] = "asteroidFieldsBlueFront";
			break;
		}
		break;
		
		case "enemies":
		switch (maykrPage)
		{
			case 0:
			var i = 0;
			maykrInventory[i] = "waddleDee";
			i += 1;
			maykrInventory[i] = "waddleDoo";
			i += 1;
			maykrInventory[i] = "brontoBurt";
			break;
		}
		break;
	}
}