///@description Begin Step

//Follow Mouse

x = mouse_x;
y = mouse_y;

//Drag Object

with (obj_Maykr_SpawnerO)
{
	if ((dragged == 2) or ((selected == 1) and (other.draggedObject)))
	{
		x = dragX + other.x - other.dragX;
		y = dragY + other.y - other.dragY;
	}
}