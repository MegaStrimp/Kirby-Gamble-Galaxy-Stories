///@description Main

#region Variables
mouseX = floor(mouse_x / 24) * 24;
mouseY = floor(mouse_y / 24) * 24;
#endregion

#region Spawn Object
if ((mouse_check_button(mb_left)) and (!keyboard_check(vk_control)) and (!keyboard_check(vk_shift)) and (!draggedObject) and (!selectedObject) and (!collidingSpawner) and (!place_meeting(x,y,obj_Maykr_HudO)) and (!place_meeting(x,y,obj_Maykr_ButtonO)))
{
	var spawner = instance_create_layer(mouseX,mouseY,spawnedLayer,obj_Maykr_Spawner);
	spawner.snap = snap;
	spawner.spawnedItemIndex = spawnedItemIndex;
	spawner.spawnedLayer = spawnedLayer;
	spawner.spawnedSprite = spawnedSprite;
	spawner.spawnedDirX = dirX;
	switch (spawnedItemIndex)
	{
		case obj_Wall:
		spawner.spawnedSlopeType = spawnedSlopeType;
		break;
	}
}
#endregion