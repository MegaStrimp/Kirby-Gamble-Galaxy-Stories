///@description Main

#region Variables
mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);
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