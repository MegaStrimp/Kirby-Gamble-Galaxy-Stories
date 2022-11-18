/// @description Main
// You can write your code in this editor

if (!global.pause)
{
	if(secondphase){
		bgVDir = -1;
	}
	
	bgX -= bgSp;
	bgY += bgSp*bgVDir;

	if(bgX <= 512){
		bgX+=512;
	}if(bgY <= -512){
		bgY+=512;
	}if(bgY >= 512){
		bgY-=512;
	}
}
else
{
	image_speed = 0;
}
