///@description Draw

//Draw Self

x = camera_get_view_x(gameView) + xstart;
y = camera_get_view_y(gameView) + ystart;

var xOffset = x;
var yOffset = y;
var alpha = 1;

switch (state)
{
	case "item_collision_platform":
	yOffset = y - 4;
	break;
	
	case "item_environment_bombSolidBlockInvis":
	alpha = .5;
	break;
	
	case "item_environment_bumper":
	xOffset = x + 4;
	yOffset = y + 4;
	break;
	
	case "item_environment_spring":
	xOffset = x + 4;
	yOffset = y + 8;
	break;
	
	case "item_environment_trampoline":
	yOffset = y + 16;
	break;
	
	case "item_environment_food":
	xOffset = x + 11;
	yOffset = y + 11;
	break;
	
	case "item_environment_pepBrew":
	xOffset = x + 11;
	yOffset = y + 13;
	break;
	
	case "item_environment_maximTomato":
	xOffset = x + 12;
	yOffset = y + 14;
	break;
	
	case "item_environment_1Up":
	xOffset = x + 12;
	yOffset = y + 12;
	break;
	
	case "item_environment_pointStar":
	xOffset = x + 11;
	yOffset = y + 11;
	break;
	
	case "item_environment_popFlower":
	xOffset = x + 12;
	yOffset = y + 16;
	break;
	
	case "item_environment_itemChest":
	xOffset = x + 14;
	yOffset = y + 16;
	break;
	
	case "item_environment_button":
	xOffset = x + 12;
	yOffset = y + 24;
	break;
	
	case "item_environment_gate":
	xOffset = x + 4;
	break;
	
	case "item_environment_abilityTrophy":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_waddleDee":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_waddleDoo":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_brontoBurt":
	xOffset = x + 16;
	yOffset = y + 16;
	break;
	
	case "item_enemies_twizzy":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_tookey":
	xOffset = x + 10;
	yOffset = y + 16;
	break;
	
	case "item_enemies_sirKibble":
	xOffset = x + 14;
	yOffset = y + 16;
	break;
	
	case "item_enemies_gordo":
	xOffset = x + 12;
	yOffset = y + 12;
	break;
	
	case "item_enemies_bloodGordo":
	xOffset = x + 12;
	yOffset = y + 12;
	break;
	
	case "item_enemies_shotzo":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_mysticDoo":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_bouncy":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_search":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_wapod":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_cappy":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_broomHatter":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_coconut":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_noddy":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_blado":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_scarfy":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_rocky":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_grizzo":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_jungleBomb":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_kabu":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	case "item_enemies_burningLeo":
	xOffset = x + 11;
	yOffset = y + 16;
	break;
	
	default:
	xOffset = x;
	yOffset = y;
	break;
}

if (((!obj_Maykr_ControlO.optionsOpen) and (!optionsButton)) or ((obj_Maykr_ControlO.optionsOpen) and (optionsButton)))
{
	if (string_copy(string(state),0,5) == "item_")
	{
		draw_rectangle_color(x,y,x + 23,y + 23,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
		if (sprite_index != -1) draw_sprite_ext(sprite_index,0,xOffset,yOffset,image_xscale,image_yscale,image_angle,image_blend,alpha);
	}
	else
	{
		if (sprite_index != -1) draw_self();
		if ((paletteIndex != -1) and (global.shaders)) pal_swap_set(paletteIndex,1,false);
		if (state == "optionsPalette") draw_sprite(paletteSprite,0,x,y);
		if (state == "optionsAbility") draw_sprite(abilityStarSprite,0,x + 12,y + 12);
		if ((paletteIndex != -1) and (global.shaders)) pal_swap_reset();
	}
}

draw_text(x,y,txt);