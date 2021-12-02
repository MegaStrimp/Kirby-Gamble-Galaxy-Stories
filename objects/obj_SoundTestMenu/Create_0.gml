///@description Initialize Variables

//Randomize

randomize();

//Other Variables

hudOffset = -250;
selection = 0;
page = "categorySelect";
soundCategory = 0;
textAlpha = 0;
textY = 147;
goBack = false;
starIndex = 0;

menuOffset = 0;
stageOffset = 0;
battleOffset = 0;
cutsceneOffset = 0;
subgameOffset = 0;
miscOffset = 0;

menuOffsetLerp = 0;
stageOffsetLerp = 0;
battleOffsetLerp = 0;
cutsceneOffsetLerp = 0;
subgameOffsetLerp = 0;
miscOffsetLerp = 0;

//Paints

var i = 0;

soundTitle[0][i] = "Team Gamble Jingle";
soundDescription[0][i] = "Team Gamble Jingle";
soundUnlocked[0][i] = global.friendlyPinkSprayPaintUnlocked;
soundUnlockMethod[0][i] = "Default";
soundIndex[0][i] = mus_TeamGamble;
soundColor[0][i] = make_color_rgb(248,160,216);
soundOffset[0][i] = 0;
soundOffsetLerp[0][i] = 0;
i += 1;

soundTitle[0][i] = "Title 1";
soundDescription[0][i] = "Title 1 Theme";
soundUnlocked[0][i] = global.friendlyPinkSprayPaintUnlocked;
soundUnlockMethod[0][i] = "Default";
soundIndex[0][i] = mus_Title1;
soundColor[0][i] = make_color_rgb(248,160,216);
soundOffset[0][i] = 0;
soundOffsetLerp[0][i] = 0;
i += 1;

soundTitle[0][i] = "Title 2";
soundDescription[0][i] = "Title 2 Theme";
soundUnlocked[0][i] = global.friendlyPinkSprayPaintUnlocked;
soundUnlockMethod[0][i] = "Default";
soundIndex[0][i] = mus_Title2;
soundColor[0][i] = make_color_rgb(248,160,216);
soundOffset[0][i] = 0;
soundOffsetLerp[0][i] = 0;
i += 1;

soundTitle[0][i] = "Menu 1";
soundDescription[0][i] = "Main Menu Theme";
soundUnlocked[0][i] = false;
soundUnlockMethod[0][i] = "Default";
soundIndex[0][i] = mus_Menu1;
soundColor[0][i] = make_color_rgb(248,160,216);
soundOffset[0][i] = 0;
soundOffsetLerp[0][i] = 0;
i += 1;

//Spawn Buttons

var button = instance_create_depth(480,0,depth,obj_Menu_Button);
button.owner = id;
button.sprite_index = spr_Menu_StageSelect_Hud_Back2;
button.state = "back";