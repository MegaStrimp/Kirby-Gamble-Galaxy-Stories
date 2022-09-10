/// @description Insert description here
// You can write your code in this editor

//if the head of Lovely is gone, destroy the body as well
if(myHead == noone){
	instance_destroy();	
}else{
	var isDamaged = false;//check if the head is taking damage and it looks like this just increases animation speed
	//animLength+=animSpeed;
	if(image_index<=1 && image_speed < 0){
		image_speed = -image_speed;
		image_index = 0;
	}
	//if(animLength>=4)animLength-=4;
	
}