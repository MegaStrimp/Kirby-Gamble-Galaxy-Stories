if instance_exists(follow)
    {
    x = follow.x
    y = follow.y
    path_insert_point(path, 0, x, y, 100);
    if path_get_number(path) > num_steps    path_delete_point(path,num_steps);
    }
   else
    {
    if alarm[0] = -1   alarm[0] = num_steps-1;
    path_delete_point(path,alarm[0]);
    } 

if alarm[0] = -1
    {
    scr_draw_trail()
    }

      


        

