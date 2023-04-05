///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
xx = 0;
yy = 0;

//Sprites

sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
sprBackground[0] = spr_Hud_Dialogue_Background_YellowCard;
sprPortrait[0] = spr_Hud_Dialogue_Portrait_Gamble_Normal;

//Other Variables

text[0] = "";
array = 0;
text_speed = room_speed / 10;
textSpeed = 18;
text_displayed = "";
text_length = -1;
text_halign = fa_left;
index = 0;
cooldown = text_speed;
owner = -1;
dir = 1;
spd = .25;
alphaSpd = .05;
cursorIndex = 1;
cursorLimit = 2;
cursorSpd = .05;
state = 0;
typewriter = true;
textSound[0] = snd_TextGamble;
soundPlaying = -1;
owner = -1;
resetArray = false;
stopsCutscene = false;
targetRoom = -1;
if (global.language == languages.english)
{
	draw_set_font(fnt_DialogueDefault);
}
else if ((global.language == languages.chinese) or (global.language == languages.japanese))
{
	draw_set_font(global.fontDialogueDefaultKanji);
}
else
{
	draw_set_font(fnt_DialogueDefaultSpecial);
}
textFont = fnt_DialogueDefault;
hasResetTimer = false;
color = c_white;
changeOwnerState = false;
pausable = true;
maxPixels = 411;
modifier = "";
dialogueFlowing = false;
paletteIndex = -1;
typist = scribble_typist();
typist.in(text_speed,2);

//Timers

resetTimer = -1;
resetTimerMax[0] = 60;
destroyTimer = -1;