//	Chain
draw_set_color(c_yellow);
for (var i = 0; i < 1; i += 0.15) {
	//	Get point
	var p = bezier(xarray, yarray, i);
	
	//	Draw point
	draw_circle(x + p.x, y + p.y, 4, false);
}

//	Head
draw_set_color(c_aqua);
draw_circle(x + xarray[2], y + yarray[2], 12, true);