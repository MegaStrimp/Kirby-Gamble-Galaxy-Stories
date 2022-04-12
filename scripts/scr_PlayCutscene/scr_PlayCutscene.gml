///@description Render Objects
///param {real} cutsceneNum Which cutscene to play.

function scr_PlayCutscene(argument0)
{
	var cutsceneNum = argument0;
	
	var cutsceneControl = instance_create_depth(0,0,0,obj_CutsceneControl);
	cutsceneControl.state = cutsceneNum;
	
	switch (cutsceneNum)
	{
		case cutscenes.exTut_AntiFloat:
		global.cutscene = true;
		cutsceneControl.stopsCutscene = true;
		break;
	}
}