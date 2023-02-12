///@description Room Creation Code

//Go To Next Room

var rm = rm_Startup;
if (global.firstTimeSetup) rm = rm_FirstTimeSetup;
room_goto(rm);