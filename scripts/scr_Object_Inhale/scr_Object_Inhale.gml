///@description Object Inhale

function scr_Object_Inhale(argument0)
{
	//Variables
	
	var enemy = argument0;
	
	//Inhale
	
	if ((place_meeting(x,y,obj_InhaleMask)) and (instance_number(obj_EatMe) < 5))
	{
		var inhaleMask = instance_place(x,y,obj_InhaleMask);
		if (object_index == obj_AbilityDropStar)
		{
			if (isBubble)
			{
				var particle = instance_create_depth(x,y,depth,obj_Particle);
				particle.sprite_index = spr_Particle_Bubble3;
				particle.destroyAfterAnimation = true;
			}
			inhaleMask.owner.ateAbilityStar = ability;
		}
		if (object_index == obj_Cappy)
		{
			if ((inhaleMask.owner.ateCappyShroom == false) and (state == 1) and (!thrown))
			{
				var shroom = instance_create_depth(x - 1,y - 9,depth - 1,obj_CappyShroom);
				shroom.owner = id;
				shroom.sprite_index = sprShroom;
				shroom.paletteIndex = paletteIndex;
				thrown = false;
				attack = false;
				attackStopTimer = -1;
				attackTimer = -1;
				state = 0;
				inhaleMask.owner.ateCappyShroom = true;
			}
		}
		if (instance_exists(inhaleMask.owner))
		{
			if ((!inhaleMask.owner.ateHeavy) and (inhaleMask.owner.sucked < 4) and ((!inhaleMask.owner.ateCappyShroom) or (object_index != obj_Cappy)))
			{
				if (enemy)
				{
					if (hasSpawner) spawner.spawn = true;
				}
				if (object_index == obj_StarBlock) instance_create_depth(x + (sprite_get_width(sprite_index) / 2),y + (sprite_get_height(sprite_index) / 2),depth - 1,obj_PointStar);
				var eatMe = instance_create_depth(x + inhaleXOffset,y + inhaleYOffset,inhaleMask.owner.depth - 1,obj_EatMe);
			    if (sprHurt == -1)
				{
					eatMe.sprite_index = sprite_index;
				}
				else
				{
					eatMe.sprite_index = sprHurt;
				}
				eatMe.image_index = image_index;
				eatMe.points = points;
			    eatMe.ability = ability;
				eatMe.dir = sign(inhaleMask.owner.image_xscale);
				eatMe.owner = inhaleMask.owner;
				if (object_get_parent(object_index) == obj_Enemy) eatMe.squadType = squadType;
				if (variable_instance_exists(id,"paletteIndex")) eatMe.paletteIndex = paletteIndex;
				switch (object_index)
				{
					case obj_StarBlock:
					eatMe.sprite_index = sprMidOrigin;
					eatMe.rotateSpd = 12;
					break;
					
					case obj_Food:
					eatMe.inhaleType = 1;
					if ((image_index == 41) or (image_index == 42)) eatMe.cannedFood = true;
					if (sprite_index == spr_Food_AmongUs) eatMe.amongUs = true;
					if (sprite_index == spr_Food_FishTaco) eatMe.fishTaco = true;
					break;
					
					case obj_PepBrew:
					eatMe.inhaleType = 2;
					break;
					
					case obj_MaximTomato:
					eatMe.inhaleType = 3;
					break;
					
					case obj_1Up:
					eatMe.inhaleType = 4;
					break;
					
					case obj_InvincibilityCandy:
					eatMe.inhaleType = 5;
					break;
					
					case obj_MintLeaf:
					eatMe.inhaleType = 6;
					break;
				}
				
			    inhaleMask.owner.ateHeavy = heavy;
			    instance_destroy();
			}
		}
	}
}