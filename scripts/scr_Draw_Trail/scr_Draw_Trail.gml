///@description Draw Trail
///@param {real} length Trail's length
///@param {real} width Trail's width
///@param {real} color Trail's color
///@param {real} sprite Trail's sprite
///@param {real} slim Trail's thickness
///@param {real} alpha Trail's alpha

//FIND THE CREATOR OF THIS SCRIPT AND CREDIT THEM

function scr_Draw_Trail(argument0,argument1,argument2,argument3,argument4,argument5)
{
var Length,Width,Color,Sprite,Slim,Alpha,AlphaT,Texture,Dir,Dim,Min,Height;
//Preparing variables
Length = argument0; //How many previous coordinates will use the trail
Width = argument1; //How wide will the trail be
Color = argument2; //Which color will be used to tint the trail
Sprite = argument3; //Which sprite's texture must be used for the trail. Must have "Used for 3D" marked. -1 for no sprite 
Slim = argument4; //Whether the trail will slim down at the end
Alpha = argument5; //The alpha to draw the trail with (0-1), optional
ArrayTrail[0,0] = x;
ArrayTrail[0,1] = y;
Height = array_height_2d(ArrayTrail);
//Getting distance between current and past coordinates
if (Height > 1) ArrayTrail[0,2] = point_distance(ArrayTrail[0,0],ArrayTrail[0,1],ArrayTrail[1,0],ArrayTrail[1,1]) + ArrayTrail[1,2];
else ArrayTrail[0,2] = 0;
//Setting the texture
if (Sprite >= 0) {
Texture = sprite_get_texture(Sprite,0);
Dim = sprite_get_width(Sprite)/sprite_get_width(Sprite)
}
else {
Texture = -1;
Dim = 1
}
texture_set_repeat(1);
//Drawing the primitive
draw_primitive_begin_texture(pr_trianglestrip,Texture);
AlphaT = 1;
Dir = 0;
Min = min(Height - 1,Length);
for(var i = 0; i < Min; i++){
  if (ArrayTrail[i,0] != ArrayTrail[i+1,0] || ArrayTrail[i,1] != ArrayTrail[i+1,1])
    Dir = point_direction(ArrayTrail[i,0],ArrayTrail[i,1],ArrayTrail[i+1,0],ArrayTrail[i+1,1]);
  var Len = Width / 2 - ((i + 1) / Min * Width / 2) * Slim;
  var XX = lengthdir_x(Len,Dir + 90); 
  var YY = lengthdir_y(Len,Dir + 90);
  AlphaT = (Min - i) / (Min / 2) * Alpha;
  draw_vertex_texture_color(ArrayTrail[i,0] + XX,ArrayTrail[i,1] + YY,ArrayTrail[i,2] / Width/Dim,0,Color,AlphaT);
  draw_vertex_texture_color(ArrayTrail[i,0] - XX,ArrayTrail[i,1] - YY,ArrayTrail[i,2] / Width/Dim,1,Color,AlphaT);
}
draw_primitive_end();
//Replacing the coordinates positions within the array
Min = min(Height,Length);
for (var i = Min; i > 0; i--){
  ArrayTrail[i,0] = ArrayTrail[i - 1,0];
  ArrayTrail[i,1] = ArrayTrail[i - 1,1];
  ArrayTrail[i,2] = ArrayTrail[i - 1,2];
}
}