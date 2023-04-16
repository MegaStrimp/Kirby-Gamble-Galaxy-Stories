///@description Execute Attack - Spark Down

function scr_Player_ExecuteAttack_SparkDown()
{
	#region Sound Effect
	if (audio_is_playing(snd_Spark6)) audio_stop_sound(snd_Spark6);
	audio_play_sound(snd_Spark6,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.sparkDown;
	attackTimer = 30;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprSparkAttack4;
	image_index = 0;
	#endregion
	
	#region Spark Projectile
	var bolt = instance_create_depth(x,y - 4,depth + 1,obj_Projectile_SparkBolt);
	bolt.owner = id;
	bolt.abilityType = playerAbilities.spark;
	#endregion
}