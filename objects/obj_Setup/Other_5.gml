///@description Room End

#region Reset Global Variables
global.isHub = false;
global.halberdEscape = false;
global.cutscene = false;
#endregion

#region Room Cleanup
switch (room)
{
	case global.maykrCanvas:
	obj_Camera.zoom = 1;
	obj_Camera.zoomTarget = 1;
	break;
}
#endregion

#region Stop Sounds
if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
#endregion

#region Stop Cutscene
if ((global.cutscene) and (!instance_exists(obj_CutsceneControl))) global.cutscene = false;
#endregion
