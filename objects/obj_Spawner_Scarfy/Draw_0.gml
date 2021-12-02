/*var x1 = x - spawnerRange;
var y1 = y - spawnerRange;
var x2 = x + camera_get_view_width(gameView) + spawnerRange + (horLoop * horOffset);
var y2 = y + camera_get_view_height(gameView) + spawnerRange + (verLoop * verOffset);

var x1Max = x - (spawnerRange * 2);
var y1Max = y - (spawnerRange * 2);
var x2Max = x + camera_get_view_width(gameView) + (spawnerRange * 2) + (horLoop * horOffset);
var y2Max = y + camera_get_view_height(gameView) + (spawnerRange * 2) + (verLoop * verOffset);

draw_set_color(c_black);
draw_rectangle(x1,y1,x2,y2,false);
draw_set_color(c_red);
draw_rectangle(x1Max,y1Max,x2Max,y2Max,false);