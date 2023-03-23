///@description Render Objects

function scr_Render()
{
	//Stage Elements
	
	//instance_deactivate_object(obj_Enemy);
	//instance_deactivate_object(obj_ParentWall);
	instance_deactivate_object(obj_Door);
	instance_deactivate_object(obj_Bumper);
	instance_deactivate_object(obj_Spring);
	instance_deactivate_object(obj_Trampoline);
	instance_deactivate_object(obj_Spike);
	instance_deactivate_object(obj_PointStar);
	instance_deactivate_object(obj_Food);
	instance_deactivate_object(obj_PepBrew);
	instance_deactivate_object(obj_MaximTomato);
	instance_deactivate_object(obj_1Up);
	instance_deactivate_object(obj_ItemChest);
	instance_deactivate_object(obj_EggPlant);
	instance_deactivate_object(obj_Butterfly);
	instance_deactivate_object(obj_AbilityTrophy);
	instance_deactivate_object(obj_PopFlower);
	instance_deactivate_object(obj_TutorialSign);
	
	//Activate
	
	var x1 = camera_get_view_x(gameView) - 128;
	var y1 = camera_get_view_y(gameView) - 128;
	var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + 128;
	var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + 128;
	instance_activate_region(x1,y1,x2,y2,true);
}