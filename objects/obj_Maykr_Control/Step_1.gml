///@description Begin Step

if (draggedSpawner != -1)
{
	if (instance_exists(draggedSpawner))
	{
		if (!mouseOnHud)
		{
			var dx = (mouseX - mouseXPrev);
			var dy = (mouseY - mouseYPrev);
			
			draggedSpawner.x += dx;
			draggedSpawner.y += dy;
		}
	}
	else
	{
		draggedSpawner = -1;
	}
}