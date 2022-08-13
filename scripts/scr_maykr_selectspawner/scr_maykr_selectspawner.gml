///@description Maykr Select Spawner

function scr_Maykr_SelectSpawner(argument0)
{
	var targetSpawner = argument0;
	
	selectedSpawner = targetSpawner;
	
	selectedSpawnerOptionsExists = scr_Maykr_ObjectAttributes(selectedSpawner.spawnedItemString,"optionsButton");
	selectedSpawnerDirectionExists = scr_Maykr_ObjectAttributes(selectedSpawner.spawnedItemString,"directionButton");
}