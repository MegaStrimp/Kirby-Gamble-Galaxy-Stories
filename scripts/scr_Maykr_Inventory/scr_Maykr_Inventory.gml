///@description Maykr Inventory
///@param {string} maykrLayer Which layer to check.

function scr_Maykr_Inventory(argument0,argument1)
{
	var maykrLayer = argument0;
	var maykrPage = argument1;
	for (var i = 0; i < 48; i++) maykrInventory[i] = -1;
	
	switch (maykrLayer)
	{
		case "Collision":
		switch (maykrPage)
		{
			case 0:
			var i = 0;
			maykrInventory[i] = maykrObjects.debugWall;
			i += 1;
			maykrInventory[i] = maykrObjects.asteroidFieldsFront;
			break;
		}
		break;
		
		case "Enemies":
		switch (maykrPage)
		{
			case 0:
			var i = 0;
			maykrInventory[i] = maykrObjects.waddleDee;
			i += 1;
			maykrInventory[i] = maykrObjects.waddleDoo;
			i += 1;
			maykrInventory[i] = maykrObjects.brontoBurt;
			break;
		}
		break;
	}
}