///@description End Step

if (!isPaused)
{
	//Follow Owner
	
	if (instance_exists(owner))
	{
		x = owner.x;
		y = owner.y;
		image_xscale = owner.image_xscale;
		image_yscale = owner.image_yscale;
		switch (sprite_index){
		case sprNormal:	case sprAir:	image_index = owner.image_index; break;
		case sprDash:		image_index = (80-owner.attackTimer)/20; break;
		case sprCombo:		image_index = 5-owner.image_index; break;
		case sprSpin:		image_index = owner.image_index; break;
		}
		
		if groundedDestroy && owner.grounded {
			owner.attackTimer=0
			owner.attackNumber=playerAttacks.none
			instance_destroy()
		}
		
		
	}	
	
	
	//deleteTimer stuffs
	if deleteTimer>0  {

		deleteTimer--;
		if deleteTimer==0 instance_destroy()

	}
	
}