///@description Initialize Variables

//Physics

spd = .5;
cutsceneSpd = .5;

//Other Variables

viewWidth = 480;
viewHeight = 270;
scale = global.windowSize;
scaleMax = floor(display_get_height() / viewHeight);
scaleMax = max(scaleMax,1);
zoom = 1;
zoomFinal = 1;
zoomTarget = 1;
hitZoom = 1;
cameraX = 0;
cameraY = 0;
cameraXStart = 0;
cameraYStart = 0;
debugCamera = false;
shakeX = 0;
shakeY = 0;
sShakeX = 0;
sShakeY = 0;
offsetX = 0;
offsetY = 0;
autoscroll = false;
offsetXSpd = 0;
offsetYSpd = 0;
bossOffsetX = 0;
bossOffsetY = 0;
objectFollowing = -1;
cinematicXOffset = 0;
cinematicYOffset = 0;
cinematicXOffsetTarget = 0;
cinematicYOffsetTarget = 0;
cinematicOffsetRange = 0;
cinematicOffsetSpeed = 0;
state = "followingKirby";
target = id;
dragX = 0;
dragY = 0;
windowSet = false;
targetClampToView = false;
halberdEscapeAngle = 0;
xLimit1 = 0;
xLimit2 = 0;
yLimit1 = 0;
yLimit2 = 0;
xLimit1Final = 0;
xLimit2Final = 0;
yLimit1Final = 0;
yLimit2Final = 0;
bossDeath = false;

//Timers

cinematicOffsetTimer = -1;
cinematicOffsetTimerMax = 30;
freezeFrameTimer = -1;
freezeFrameTimerMax = 15;

//Set Window Size

window_set_size(viewWidth * scale,viewHeight * scale);

//Resize Surface

surface_resize(application_surface,viewWidth * scale,viewHeight * scale);

//Gui Size

display_set_gui_size(viewWidth,viewHeight);

//Window Center

if (!window_get_fullscreen())
{
	window_center();
}