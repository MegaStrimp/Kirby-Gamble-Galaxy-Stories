///@description Room Creation Code

//Variables

global.gambleMaykr = true;
global.pause = true;
if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
global.discordDetailText = "Gamble Maykr";
global.discordLargeImage = "ggs_icon";

//Stage Number

global.stageNumber = 0;
global.roomCheckpoint = room;