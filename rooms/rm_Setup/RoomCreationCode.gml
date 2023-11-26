///@description Room Creation Code

#region Go To Next Room
var rm = rm_Startup;
if (global.firstTimeSetup) rm = rm_FirstTimeSetup;

var rm = rm_GreenGreens1;

room_goto(rm);
#endregion