///@description Initialize Variables

//Mouse

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

//Settings

hudVisible = true;
bottomHudVisible = true;
bottomHudOpen = false;

//Mouse On Top

mouseOnTopSave = false;
mouseOnTopLoad = false;
mouseOnTopOptions = false;
mouseOnTopReset = false;

//Offsets

topHudOffset = 0;
topHudSaveOffset = 0;
topHudLoadOffset = 0;
topHudOptionsOffset = 0;
topHudResetOffset = 0;
bottomHudOffset = (50 * !bottomHudVisible) - (96 * bottomHudOpen);