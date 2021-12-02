///@description Main

if (instance_exists(obj_Maykr_Control))
{
	if (obj_Maykr_Control.active)
	{
		visible = false;
	}
	else
	{
		visible = true;
	}
}

//Set Buttons

if (setButtons)
{
	switch (global.gambleMaykrMenu)
	{
		case "collision":
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 0),depth - 1,obj_Maykr_Button);
		button.state = "item_collision_wall";
		button.layerIndex = "collision";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 0),depth - 1,obj_Maykr_Button);
		button.state = "item_collision_slope";
		button.layerIndex = "collision";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 0),depth - 1,obj_Maykr_Button);
		button.state = "item_collision_gentleSlope";
		button.layerIndex = "collision";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 0),depth - 1,obj_Maykr_Button);
		button.state = "item_collision_superGentleSlope";
		button.layerIndex = "collision";
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 1),depth - 1,obj_Maykr_Button);
		button.state = "item_collision_ladder";
		button.layerIndex = "collision";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 1),depth - 1,obj_Maykr_Button);
		button.state = "item_collision_platform";
		button.layerIndex = "collision";
		break;
		
		case "environment":
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 0),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_starBlock";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 0),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_bigStarBlock";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 0),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_bombBlock";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 0),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_bombSolidBlock";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 1),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_bombSolidBlockInvis";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 1),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_abilityBlock";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 1),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_breakingWall";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 1),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_crate";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 2),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_durableBlock";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 2),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_bumper";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 2),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_spring";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 2),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_trampoline";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 3),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_food";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 3),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_pepBrew";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 3),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_maximTomato";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 3),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_1Up";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 4),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_spike";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 4),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_pointStar";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 4),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_popFlower";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 4),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_itemChest";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 5),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_button";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 5),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_gate";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 5),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_abilityTrophy";
		button.layerIndex = "environment";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 5),depth - 1,obj_Maykr_Button);
		button.state = "item_environment_cuttableGrass";
		button.layerIndex = "environment";
		break;
		
		case "enemies":
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 0),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_waddleDee";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 0),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_waddleDoo";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 0),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_brontoBurt";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 0),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_twizzy";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 1),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_tookey";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 1),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_sirKibble";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 1),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_gordo";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 1),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_bloodGordo";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 2),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_shotzo";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 2),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_mysticDoo";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 2),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_bouncy";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 2),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_search";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 3),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_wapod";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 3),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_cappy";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 3),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_broomHatter";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 3),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_coconut";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 4),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_noddy";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 4),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_blado";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 4),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_scarfy";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 4),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_rocky";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 0),35 + (29 * 5),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_grizzo";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 1),35 + (29 * 5),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_jungleBomb";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 2),35 + (29 * 5),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_kabu";
		button.layerIndex = "enemies";
		var button = instance_create_depth(360 + (29 * 3),35 + (29 * 5),depth - 1,obj_Maykr_Button);
		button.state = "item_enemies_burningLeo";
		button.layerIndex = "enemies";
		break;
	}
	setButtons = false;
}