///@description Room Creation Code

//Go To Next Room

var rm = rm_Startup;
if (global.firstTimeBooting) rm = rm_Language;
rm = rm_Language;
room_goto(rm);