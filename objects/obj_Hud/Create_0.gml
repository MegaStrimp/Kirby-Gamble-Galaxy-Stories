///@description Initialize Variables

#region Hud Variables
hudHpP1 = global.healthP1;
hudHpP2 = global.healthP2;
hudHpP3 = global.healthP3;
hudHpP4 = global.healthP4;

flashP1 = false;
flashP2 = false;
flashP3 = false;
flashP4 = false;

starsPosX = camera_get_view_x(gameView) + 1;
starsPosY = camera_get_view_y(gameView) + 26;

drawAlpha = 1;

halberdEscapeTimer = 9999;

cutsceneLineOffset = -580;
cutsceneStarAngle = 0;

notifArrayLength = 0;
notifArrayLengthTemp = 0;
notifArray = -1;
notifState = 0;
notifOffset = -25;

stageTitleOffset = 250;

hasTreasure = false;

mixIndex = 0;
mixRosterAbility[0] = playerAbilities.none;
mixRosterText[0] = spr_Hud_AbilityText_Kirby;
mixRosterIcon[0] = spr_Hud_Icon_Kirby;

musicIntroActive = false;
musicIntroAlpha = 0;

hasBossDeathOverlay = false;
bossDeathColor = c_white;
#endregion

#region Timers
hudHpP1Timer = -1;
hudHpP2Timer = -1;
hudHpP3Timer = -1;
hudHpP4Timer = -1;
hudHpTimerMax = 2;

flashP1Timer = -1;
flashP2Timer = -1;
flashP3Timer = -1;
flashP4Timer = -1;
flashTimerMax = 2;

flashStopP1Timer = -1;
flashStopP2Timer = -1;
flashStopP3Timer = -1;
flashStopP4Timer = -1;
flashStopTimerMax = 35;

notifTimer = -1;

mixTimer = -1;

mixIndexTimer = -1;
mixIndexTimerMax = 4;

musicIntroTimer = -1;
musicIntroTimerMax = 120;

bossDeathColorTimer = -1;
bossDeathColorTimerMax = 10;
#endregion