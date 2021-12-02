///@description Draw

//Routes

switch (movementState)
{
	case "halberd5-1":
	draw_set_color(c_black);
	draw_line(2136,y,2280,y);
	break;
	
	case "halberd5-2":
	draw_set_color(c_black);
	draw_line(2280,y,2424,y);
	break;
	
	case "halberd5-3":
	draw_set_color(c_black);
	draw_line(2280,y,2496,y);
	break;
	
	case "halberd5-4":
	draw_set_color(c_black);
	draw_line(x,120,x,216);
	break;
	
	case "eggGardenSample2-1":
	draw_set_color(c_black);
	draw_line(x,936,x,1194);
	break;
	
	case "eggGardenSample2-2":
	draw_set_color(c_black);
	draw_line(x,744,x,1026);
	break;
	
	case "eggGardenSample2-3":
	draw_set_color(c_black);
	draw_line(x,504,x,786);
	break;
	
	case "eggGardenSample2-4":
	draw_set_color(c_black);
	draw_line(x,240,x,522);
	break;
}

//Draw Self

draw_self();