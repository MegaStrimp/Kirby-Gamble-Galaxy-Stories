///@description Initialize Variables

//Other Variables

hudHpP1 = global.hpP1;
hudHpP2 = global.hpP2;
flashP1 = false;
flashP2 = false;
starsPosX = camera_get_view_x(gameView) + 1;
starsPosY = camera_get_view_y(gameView) + 26;
halberdEscapeTimer = 9999;
drawAlpha = 1;
cutsceneLineOffset = -580;
notifArrayLength = 0;
notifArrayLengthTemp = 0;
notifArray = -1;
notifState = 0;
notifOffset = -25;
stageTitleOffset = 250;
hasTreasure = false;
cutsceneStarAngle = 0;

//Timers

hudHpP1Timer = -1;
hudHpP2Timer = -1;
hudHpTimerMax = 4;
flashP1Timer = -1;
flashP2Timer = -1;
flashTimerMax = 2;
flashStopP1Timer = -1;
flashStopP2Timer = -1;
flashStopTimerMax = 35;
notifTimer = -1;