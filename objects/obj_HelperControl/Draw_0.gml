///@description Draw

//Variables

var pr,i;

pr = ds_priority_create();

for (var i = 0; i < arrayLength; i++)
{
    ds_priority_add(pr,i,lengthdir_y(1,(rot - 90) + i * (360 / arrayLength)));
}

//Draw Hud

for (var i = 0; i < arrayLength; i++)
{
    var h = ds_priority_delete_min(pr);
	var sel = 0;
	draw_sprite_ext(helperSprite[h],
	sel,x + lengthdir_x(hudWidth / 2,(rot - 90) + h * (360 / arrayLength)),
	y + lengthdir_y(hudHeight / 2,(rot - 90) + h * (360 / arrayLength)),
	1 + lengthdir_y(hudHeight / 2,(rot - 90) + h * (360 / arrayLength)) / (hudHeight * 2),
	1 + lengthdir_y(hudHeight / 2,(rot - 90) + h * (360 / arrayLength)) / (hudHeight * 2),0,c_white,1);
}

ds_priority_destroy(pr);

//draw_text(x,y,string(selection));