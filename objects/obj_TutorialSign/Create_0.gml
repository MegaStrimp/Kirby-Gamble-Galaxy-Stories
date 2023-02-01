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
activateRange = 180;
image_alpha = 0;

//Timers

buttonAnimTimer = -1;
starTimer = -1;

//Destroy

if (((global.hasCoop == 0) and (global.characterP1 != playerCharacters.kirby))
or ((global.hasCoop == 1) and (global.characterP1 != playerCharacters.kirby) and (global.characterP2 != playerCharacters.kirby))
or ((global.hasCoop == 2) and (global.characterP1 != playerCharacters.kirby) and (global.characterP2 != playerCharacters.kirby) and (global.characterP3 != playerCharacters.kirby))
or ((global.hasCoop == 3) and (global.characterP1 != playerCharacters.kirby) and (global.characterP2 != playerCharacters.kirby) and (global.characterP3 != playerCharacters.kirby) and (global.characterP4 != playerCharacters.kirby)))
{
	instance_destroy();
}