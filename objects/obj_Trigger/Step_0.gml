///@description Main

//Trigger

if (place_meeting(x,y,obj_Player))
{
	var touchedPlayer = instance_place(x,y,obj_Player);
	if (isTutorialTextbox)
	{
		var tutorialTextbox = instance_create_depth(camera_get_view_x(gameView) + (camera_get_view_width(gameView) / 2),camera_get_view_y(gameView) + (camera_get_view_height(gameView) / 2),-1000,obj_TutorialTextbox);
		tutorialTextbox.image_index = tutorialTextboxIndex;
		tutorialTextbox.player = touchedPlayer.player;
		global.pause = true;
		if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
	}
	if (destroyWhenTriggered) instance_destroy();
}