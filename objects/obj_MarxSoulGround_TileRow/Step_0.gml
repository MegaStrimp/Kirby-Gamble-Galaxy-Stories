///@description Main

if (!global.pause)
{
	//Movement
	
	//scaleOffset += (.002 * scaleDir);
	//if ((abs(scaleOffset) >= .1)) scaleDir *= -1;
	
	valueShiftPos = clamp(valueShiftPos+(valueShiftSpeed*valueShiftDir),79,256);
	if(valueShiftPos < 80 || valueShiftPos > 255){
		valueShiftDir = -valueShiftDir;
	}
	valueShiftPos = clamp(valueShiftPos,80,255);
	
	image_blend = make_color_rgb(valueShiftPos,valueShiftPos,valueShiftPos);
	
	hsp = clamp(hsp-accel,maxHsp,0);
	
	x += hsp;
	
	//Destroy
	
	if (x < -260){
		// save extra pixels and spawn next row accordingly, same hsp and etc.
		var newTileRow = instance_create_depth(x+(256*3),y,depth,obj_MarxSoulGround_TileRow);
		newTileRow.hsp = hsp;
		newTileRow.maxHsp = maxHsp;
		newTileRow.accel = accel;
		newTileRow.sprIdle = sprIdle;
		newTileRow.valueShiftPos = valueShiftPos;
		newTileRow.valueShiftDir = valueShiftDir;
		newTileRow.valueShiftPos = valueShiftPos;
		newTileRow.startFight = startFight;
		newTileRow.image_index = image_index;
		instance_destroy();
	}
	
	//Animation
	
	//image_speed = imageSpeed;
	//image_xscale = scale + (scaleOffset / 4);
	//image_yscale = scale - (scaleOffset / 4);
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}