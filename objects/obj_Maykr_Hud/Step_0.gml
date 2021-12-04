///@description Main

#region Variables
mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);
#endregion

#region Mouse On Top
if (point_in_rectangle(mouseX,mouseY,420,49,480,70)) mouseOnTopSave = true;
if (!point_in_rectangle(mouseX,mouseY,460,49,480,70)) mouseOnTopSave = false;

if (point_in_rectangle(mouseX,mouseY,420,72,480,93)) mouseOnTopLoad = true;
if (!point_in_rectangle(mouseX,mouseY,460,72,480,93)) mouseOnTopLoad = false;

if (point_in_rectangle(mouseX,mouseY,399,95,480,116)) mouseOnTopOptions = true;
if (!point_in_rectangle(mouseX,mouseY,460,95,480,116)) mouseOnTopOptions = false;

if (point_in_rectangle(mouseX,mouseY,394,118,480,139)) mouseOnTopReset = true;
if (!point_in_rectangle(mouseX,mouseY,460,118,480,139)) mouseOnTopReset = false;
#endregion

#region Buttons
if (mouse_check_button_pressed(mb_left))
{
	if (point_in_rectangle(mouseX,mouseY,224,226 + bottomHudOffset,256,233 + bottomHudOffset)) bottomHudOpen = !bottomHudOpen;
}
if (keyboard_check_pressed(vk_left)) hudVisible = !hudVisible;
#endregion