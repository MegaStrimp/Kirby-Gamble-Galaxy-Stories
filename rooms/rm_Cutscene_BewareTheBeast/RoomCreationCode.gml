///@description Room Creation Code

//Variables

global.discordDetailText = "Green Greens";
global.discordLargeImage = "greengreens_icon";

//Stage Number

global.stageNumber = 1;
global.roomCheckpoint = room;

//Camera

if (instance_exists(obj_Camera))
{
	obj_Camera.x = 100;
	obj_Camera.y = 100;
}