/// @description scr_draw_trail()
function scr_draw_trail() {

	//by Steven Richardson 

	if !path_exists(path)  exit;

	pinch= path_get_number(path) / num_steps;

	var length = path_get_length(path);

	if length = 0   exit;

	var colour_init = draw_get_colour();
	draw_set_colour(trail_colour);

	var alpha_init = draw_get_alpha();
	draw_set_alpha(alpha);

	var x_sc = x_scale;

	if x_sc = 0
	    {
	    x_sc = length / sprite_get_width(sprite);  // if x_scale is set at '0',  then the x_scale will be set so that the sprite will equal length of the path 
	    }
 
    
	var sp_w = sprite_get_width(sprite);
	var sp_h = sprite_get_height(sprite);
	var step = 1/max(1,floor(length/precision));

	var tex = sprite_get_texture(sprite,index);


	var i, a0, a1, a12, p12, x0, y0, x1, y1, x2, y2, l, tx1, ty1, bx1, by1, count;

	l = 0;
	lb = 0;
	count = 0;

	x1 = path_get_x(path,0);
	y1 = path_get_y(path,0);

	x0 = x1;
	y0 = y1;

	x2 = path_get_x(path,step);
	y2 = path_get_y(path,step);

	a1 = point_direction (x1,y1,x2,y2);
	var a_start = a1;



	p12 = a1 - 90;

    

	tx1 = x1 + lengthdir_x(-sp_h*image_y_offset*y_scale,p12);
	ty1 = y1 + lengthdir_y(-sp_h*image_y_offset*y_scale,p12);

	bx1 = x1 + lengthdir_x(-sp_h*(image_y_offset-1)*y_scale,p12);
	by1 = y1 + lengthdir_y(-sp_h*(image_y_offset-1)*y_scale,p12);

	draw_primitive_begin_texture(pr_trianglestrip, tex);

	if no_show_distance = 0
	    {
	    draw_vertex_texture( tx1,  ty1, x_offset, 0);
	    draw_vertex_texture( bx1,  by1, x_offset, 1);
	    }

	for (i = step; i <= 1; i += step)
	    {
	    a0 = a1
    
	    x0 = x1;
	    y0 = y1;

	    x1 = x2;
	    y1 = y2;

	    x2 = path_get_x(path,min(1,i+step));
	    y2 = path_get_y(path,min(1,i+step));
	    a1 = point_direction (x1,y1,x2,y2);
    
	    a12 = angle_difference(a0,a1);

	    if i = 1
	        {
	        p12 = a0 - 90;        
	        }
	        else
	        {
	        p12 = a1  - 90  + a12 / 2;
	        }
      
    
	    bx0 = bx1;
	    by0 = by1;
    

	    tx1 = lengthdir_x(-sp_h*image_y_offset*y_scale,p12);
	    ty1 = lengthdir_y(-sp_h*image_y_offset*y_scale,p12);
    
	    bx1 = lengthdir_x(-sp_h*(image_y_offset-1)*y_scale,p12);
	    by1 = lengthdir_y(-sp_h*(image_y_offset-1)*y_scale,p12);    

	   if pinch_end != 0
	       {
	       tx1 *= (1-i*pinch)
	       ty1 *= (1-i*pinch)
	       bx1 *= (1-i*pinch)
	       by1 *= (1-i*pinch)  
	       }
    
	    tx1 += x1
	    ty1 += y1
	    bx1 += x1
	    by1 += y1   
           
	    if fade = 1   draw_set_alpha((1-i) * alpha);

	    if length * i >= no_show_distance
	        {    
	        draw_vertex_texture( tx1,  ty1, i/x_sc*length/sp_w+x_offset, 0);
	        draw_vertex_texture( bx1,  by1, i/x_sc*length/sp_w+x_offset, 1);
    
	        count += 2;
        
	        if count >= 4 
	            {
	            count = 2;
	            texture_set_repeat(true);
	            draw_primitive_end();
	            draw_primitive_begin_texture(pr_trianglestrip, tex);
	            draw_vertex_texture( tx1,  ty1, i/x_sc*length/sp_w+x_offset, 0);
	            draw_vertex_texture( bx1,  by1, i/x_sc*length/sp_w+x_offset, 1);
	            }
	        }
	    }

	texture_set_repeat(false);   
	draw_set_alpha(alpha_init);    
	draw_set_colour(colour_init);
   



}
