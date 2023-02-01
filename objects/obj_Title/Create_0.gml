///@description Initialize Variables

//Physics

xx = 0;
hsp = 10;

//Other Variables

x = room_width / 2;
y = room_height / 2.5;
sprite_index = spr_Logo;
if (global.season = seasons.halloween) sprite_index = spr_Logo_Halloween;
image_xscale = .2;
image_yscale = .2;
page = 0;
selectedFile = 0;
codeState = 0;
select = false;
cameraY = 0;
canBeInteracted = false;
introState = 0;
blackAlphaVal = 1;
gradientAlpha = .5;
gradientAlphaDir = 1;
gameclosing = false;
closingk = 0;

//Timers

shineTimer = 0;
shineTimerMax = 90;
introStateTimer = 30;

//Save Files

if (global.firstTimeBooting)
{
	global.firstTimeBooting = false;
	scr_SaveConfig("config.ini");
}

file1Color = 0;
file2Color = 0;
file3Color = 0;

if (file_exists("SaveSlot1.ini"))
{
	file1Color = 2;
}
else
{
	file1Color = 0;
}

if (file_exists("SaveSlot2.ini"))
{
	file2Color = 2;
}
else
{
	file2Color = 0;
}

if (file_exists("SaveSlot3.ini"))
{
	file3Color = 2;
}
else
{
	file3Color = 0;
}