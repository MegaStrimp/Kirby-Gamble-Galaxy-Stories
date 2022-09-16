/// @description Creating objects
// You can write your code in this editor

//create = true;

startFight = false;

secondphase = false;

// Background

sprBG = spr_marxsoul_bg;
sprBGPal = spr_MarxSoul_Palette_BG;

bgX = 0;
bgY = 0;

bgVDir = 1;

bgSp = 0.25;

palIndex = 0;

// Set Background layer's alpha to 0
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id, 0);

// Scrolling Ground

sprTileRow1 = spr_marxsoul_row1;
sprTileRow2 = spr_marxsoul_row2;
sprTileRow3 = spr_marxsoul_row3;
sprTileRow4 = spr_marxsoul_row4;

screenHeight = 270;
tileRow2Height = 28;
tileRow3Height = 28*2-4;
tileRow4Height = 28*2-4;

rowSpeed[0] = 4;
rowSpeed[1] = 3;
rowSpeed[2] = 2;
rowSpeed[3] = 1;

// Background
sprBG = spr_marxsoul_bg;
sprPal = spr_MarxSoul_Palette_BG;

//tileRowPrefObj = obj_MarxSoulGround_TileRow;

var tileRow1a = instance_create_depth(0,screenHeight,1099,obj_MarxSoulGround_TileRow);
tileRow1a.sprIdle = sprTileRow4;
var tileRow1b = instance_create_depth(0+tileRow1a.sprite_width,screenHeight,1099,obj_MarxSoulGround_TileRow);
tileRow1b.sprIdle = sprTileRow4;
var tileRow1c = instance_create_depth(0+(tileRow1a.sprite_width*2),screenHeight,1099,obj_MarxSoulGround_TileRow);
tileRow1c.sprIdle = sprTileRow4;
var tileRow1d = instance_create_depth(0+(tileRow1a.sprite_width*3),screenHeight,1099,obj_MarxSoulGround_TileRow);
tileRow1d.sprIdle = sprTileRow4;
tileRow1a.maxHsp = -4;
tileRow1b.maxHsp = tileRow1a.maxHsp;
tileRow1c.maxHsp = tileRow1a.maxHsp;
tileRow1d.maxHsp = tileRow1a.maxHsp;
tileRow1a.accel = 0.5/16;
tileRow1b.accel = tileRow1a.accel;
tileRow1c.accel = tileRow1a.accel;
tileRow1d.accel = tileRow1a.accel;

var tileRow2a = instance_create_depth(0,screenHeight-tileRow2Height,1099,obj_MarxSoulGround_TileRow);
tileRow2a.sprIdle = sprTileRow3;
var tileRow2b = instance_create_depth(0+tileRow1a.sprite_width,screenHeight-tileRow2Height,1099,obj_MarxSoulGround_TileRow);
tileRow2b.sprIdle = sprTileRow3;
var tileRow2c = instance_create_depth(0+(tileRow1a.sprite_width*2),screenHeight-tileRow2Height,1099,obj_MarxSoulGround_TileRow);
tileRow2c.sprIdle = sprTileRow3;
var tileRow2d = instance_create_depth(0+(tileRow1a.sprite_width*3),screenHeight-tileRow2Height,1099,obj_MarxSoulGround_TileRow);
tileRow2d.sprIdle = sprTileRow3;
tileRow2a.maxHsp = -3;
tileRow2b.maxHsp = tileRow2a.maxHsp;
tileRow2c.maxHsp = tileRow2a.maxHsp;
tileRow2d.maxHsp = tileRow2a.maxHsp;
tileRow2a.accel = 0.25/16;
tileRow2b.accel = tileRow2a.accel;
tileRow2c.accel = tileRow2a.accel;
tileRow2d.accel = tileRow2a.accel;

var tileRow3a = instance_create_depth(0,screenHeight-tileRow3Height,1099,obj_MarxSoulGround_TileRow);
tileRow3a.sprIdle = sprTileRow2;
var tileRow3b = instance_create_depth(0+tileRow1a.sprite_width,screenHeight-tileRow3Height,1099,obj_MarxSoulGround_TileRow);
tileRow3b.sprIdle = sprTileRow2;
var tileRow3c = instance_create_depth(0+(tileRow1a.sprite_width*2),screenHeight-tileRow3Height,1099,obj_MarxSoulGround_TileRow);
tileRow3c.sprIdle = sprTileRow2;
var tileRow3d = instance_create_depth(0+(tileRow1a.sprite_width*3),screenHeight-tileRow3Height,1099,obj_MarxSoulGround_TileRow);
tileRow3d.sprIdle = sprTileRow2;
tileRow3a.maxHsp = -2;
tileRow3b.maxHsp = tileRow3a.maxHsp;
tileRow3c.maxHsp = tileRow3a.maxHsp;
tileRow3d.maxHsp = tileRow3a.maxHsp;
tileRow3a.accel = 0.125/16;
tileRow3b.accel = tileRow3a.accel;
tileRow3c.accel = tileRow3a.accel;
tileRow3d.accel = tileRow3a.accel;

var tileRow4a = instance_create_depth(0,screenHeight-tileRow4Height,1099,obj_MarxSoulGround_TileRow);
tileRow4a.sprIdle = sprTileRow1;
var tileRow4b = instance_create_depth(0+tileRow1a.sprite_width,screenHeight-tileRow4Height,1099,obj_MarxSoulGround_TileRow);
tileRow4b.sprIdle = sprTileRow1;
var tileRow4c = instance_create_depth(0+(tileRow1a.sprite_width*2),screenHeight-tileRow4Height,1099,obj_MarxSoulGround_TileRow);
tileRow4c.sprIdle = sprTileRow1;
var tileRow4d = instance_create_depth(0+(tileRow1a.sprite_width*3),screenHeight-tileRow4Height,1099,obj_MarxSoulGround_TileRow);
tileRow4d.sprIdle = sprTileRow1;
tileRow4a.maxHsp = -1;
tileRow4b.maxHsp = tileRow4a.maxHsp;
tileRow4c.maxHsp = tileRow4a.maxHsp;
tileRow4d.maxHsp = tileRow4a.maxHsp;
tileRow4a.accel = 0.0625/16;
tileRow4b.accel = tileRow4a.accel;
tileRow4c.accel = tileRow4a.accel;
tileRow4d.accel = tileRow4a.accel;

///@description Initialize Variables

////Randomize

//randomize();

////Other Variables

//create = true;

////Timers

//spawnTimer = 0;
//spawnTimerMax = 300;

//instance_destroy();