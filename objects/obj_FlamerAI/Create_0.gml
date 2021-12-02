///Initialize variables

//  spd (short for speed)
//- indicates the amount of pixels this instance moves per step
//- it may also be a negative value, indicating moving backwards
//- this var replaces the built-in variable "speed"
//  to avoid teleporting too far and overshooting edges
//- this variable may be any (sufficiently small) real number
spd = 3;
//  dir (short for direction)
//- indicates the orientation of this instance
//- corresponds to the moving direction if "spd > 0"
//- is opposite of the moving direction if "spd < 0"
//- replaces the built-in variable "image_angle"
//  to avoid performing ransformations on the collision box
//  and obtaining 1-pixel-off results
//- diections are counter clockwise angles in degrees
//  with respect to the positive x-axis
//- this variable may be 0, 90, 180 or 270
dir = 0;

// animation speed
image_speed = 0.5;