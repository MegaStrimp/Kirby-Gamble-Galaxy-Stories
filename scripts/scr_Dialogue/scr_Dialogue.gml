///@description Dialogue
///@param {real} dialogue Dialogue object.
///@param {real} array Array number.
///@param {string} text String.
///@param {real} sprTextbox Textbox sprite.
///@param {real} sprBackground Background sprite.
///@param {real} sprPortrait Portrait sprite.
///@param {real} textSound Text sound.

function scr_Dialogue(argument0,argument1,argument2,argument3,argument4,argument5,argument6)
{
	var dialogue = argument0;
	var array = argument1;
	var text = argument2;
	var sprTextbox = argument3;
	var sprBackground = argument4;
	var sprPortrait = argument5;
	var textSound = argument6;
	
	if (instance_exists(dialogue))
	{
		dialogue.text[array] = text;
		dialogue.sprTextbox[array] = sprTextbox;
		dialogue.sprBackground[array] = sprBackground;
		dialogue.sprPortrait[array] = sprPortrait;
		dialogue.textSound[array] = textSound;
	}
}