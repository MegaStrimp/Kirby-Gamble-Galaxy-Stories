///@description Main

#region Characters
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_PlasmaWisp_Normal_Idle;
		sprCharge = spr_PlasmaWisp_Normal_Charge;
		sprAttack = spr_PlasmaWisp_Normal_Shoot;
		sprAttackBasic = spr_PlasmaWisp_Normal_AttackBasic;
		sprAttackRecharge = spr_PlasmaWisp_Normal_AttackRecharge;
		sprHurt = spr_PlasmaWisp_Normal_Hurt;
		break;
		#endregion
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion

if ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)))
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	/////// Always interrupt to the hurt attackState if you get hurt
	if (hurt) attackState= 2
	
	/////// Basic movement
	switch (attackState)
	{
	case 0: /// Do loops
		attackTimer+=0.05
		AttackChosen=4 // Use long range by default
		with obj_Player if abs(x-other.x)<62 other.AttackChosen=6 //Use the short ranged attack if player is close
		x=chargeX-sin(attackTimer)*8
		y=chargeY-cos(attackTimer)*8//Y'know, the usual loops the mf makes
		
		//Change direction
		dirX=sign(obj_Player.x-x)
		if dirX=0 dirX = 1;
		
		if attackTimer = 6.15  {attackTimer=0 loopCount-=1 if loopCount<=0 {attackState=3 attackTimer=50+random(10)}   }
		
	break;
	case 1: /// Go back to "spawn"
		sprite_index=sprIdle
		hsp=sign(chargeX-x)
		if abs(x-chargeX)<6 {loopCount=ceil(random(3)) attackState=0 attackTimer=0}
		
	break;
	case 2: /// hurt
		sprite_index= sprHurt
		chargeX=x
		chargeY=y
		if !hurt attackState=1
	break;
	case 3: /// charge
		sprite_index = sprCharge
		attackTimer-=1
		hsp=0
		vsp=0
		
		if attackTimer<=0 {attackState=AttackChosen loopCount=0} 	
	break;
	case 4: /// Attack (Arrows) [loopCount becomes shots fired]
		sprite_index = sprAttack
		attackTimer-=1
		if attackTimer<=0 {
				if loopCount<3 {
						if (audio_is_playing(snd_Spark2)) audio_stop_sound(snd_Spark2);
						audio_play_sound(snd_Spark2,0,false);
						var projectile = instance_create_depth(x + (6 * dirX),y + 2,depth - 1,obj_Projectile_PlasmaWisp);
						projectile.owner = id;
						projectile.abilityType = playerAbilities.spark;
						projectile.character = 1;
						projectile.sprite_index = spr_Projectile_Spark_Normal_Low;
						projectile.mask_index = projectile.sprite_index;
						projectile.hurtsPlayer=1
						projectile.enemy = true;
						projectile.dirX = dirX;
						projectile.image_xscale = dirX;
						projectile.hsp = dirX * 6;
						projectile.destroyTimer = 60;
					
				} else { 
						attackState=5/*Recharge*/  
						attackTimer=0 
				} 
				attackTimer=10 
				loopCount+=1 /*Reusing old variables is based*/
		}
		else {x+=-dirX*attackTimer/7 } /*recoil*/
	break;
	case 5: //Recharge
		sprite_index = sprAttackRecharge 
		attackTimer+=1
		if attackTimer>=60 {attackState=1}//Taking into account the way the code is done will make it so that this attackState always starts with 10
	break;
	case 6: // Attack (Short Range)
		sprite_index = sprAttackBasic
		attackTimer+=1
		x+=1*-dirX
		if attackTimer div 10 && attackTimer<=50{
			if (audio_is_playing(snd_Spark1)) audio_stop_sound(snd_Spark1);
			audio_play_sound(snd_Spark1,0,false);
			var projectile = instance_create_depth(x + ((-8+random(16)) * dirX),y-8+random(16),depth - 1,obj_Projectile_PlasmaWisp);
			projectile.owner = id;
			projectile.abilityType = playerAbilities.spark;
			projectile.sprite_index = spr_Projectile_Spark_Normal_None;
			projectile.mask_index = projectile.sprite_index;
			projectile.hurtsPlayer=1
			projectile.enemy = true;
			projectile.dirX = dirX;
			projectile.image_xscale = dirX;
			projectile.image_yscale=0.2
			projectile.hspeed = dirX * 6;
			projectile.destroyTimer = 20;
			projectile.setupExplode=1
			projectile.setupTimer=10
		}
		if attackTimer>=50{ x-=1*-dirX} // Stops moving to the right  //Teh code this time has it on 0 so gg ez
		if attackTimer>= 100 attackState=1
		
	break;
		
	}
	
	#region Animation
	image_speed = 1;
	#endregion
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}
