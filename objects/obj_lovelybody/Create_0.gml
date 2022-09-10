/// @description Insert description here
// Lovelybody just pretty much animates under the head and then pops when the head is destroyed

//sprites
headOffset = -28;


//creates the actual enemy
myHead = instance_create_depth(x,y+headOffset*image_yscale,depth,obj_Lovely);
myHead.myBody = self;



//Body variables
animSpeed = .25;
animLength = 4;
image_speed = animSpeed;

speedAnimationTimer = room_speed*8;
speedAnimationTimerMax = room_speed*8;
