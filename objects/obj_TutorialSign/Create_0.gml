///@description Initialize Variables

//Sprites

sprIdle = spr_TutorialSign_Normal_Idle;

//Other Variables

state = "walk";
substate = 0;
buttonState = 0;
starState = 0;
completed = false;
buttonAnim = 0;
active = false;

//Timers

buttonAnimTimer = -1;
starTimer = -1;

//Destroy

if ((global.characterP1 != playerCharacters.kirby) and ((!global.hasCoop) or ((global.hasCoop) and (global.characterP2 != playerCharacters.kirby)))) instance_destroy();