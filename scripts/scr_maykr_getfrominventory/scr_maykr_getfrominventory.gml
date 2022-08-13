///@description Maykr - Get From Inventory

function scr_Maykr_GetFromInventory(argument0)
{
	//Variables
	
	spawnedState = 0;
	spawnedSlopeType = 0;
	spawnedXOffset = 0;
	spawnedYOffset = 0;
	
	switch (argument0)
	{
		#region Collision
		case maykrObjects.debugWall:
		spawnedItemIndex = obj_ParentWall;
		spawnedSprite = spr_Maykr_Spawner_DebugWall;
		break;
		
		case maykrObjects.asteroidFieldsFront:
		spawnedItemIndex = obj_ParentWall;
		spawnedSprite = spr_Maykr_Spawner_AsteroidFieldsFront;
		break;
		#endregion
		
		#region Enemies
		case maykrObjects.waddleDee:
		spawnedItemIndex = obj_WaddleDee;
		spawnedSprite = spr_WaddleDee_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.waddleDoo:
		spawnedItemIndex = obj_WaddleDoo;
		spawnedSprite = spr_WaddleDoo_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.brontoBurt:
		spawnedItemIndex = obj_BrontoBurt;
		spawnedSprite = spr_BrontoBurt_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.twizzy:
		spawnedItemIndex = obj_Twizzy;
		spawnedSprite = spr_Twizzy_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.tookey:
		spawnedItemIndex = obj_Tookey;
		spawnedSprite = spr_Tookey_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.sirKibble:
		spawnedItemIndex = obj_SirKibble;
		spawnedSprite = spr_SirKibble_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.gordo:
		spawnedItemIndex = obj_Gordo;
		spawnedSprite = spr_Gordo_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.bloodGordo:
		spawnedItemIndex = obj_BloodGordo;
		spawnedSprite = spr_BloodGordo_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.shotzo:
		spawnedItemIndex = obj_Shotzo;
		spawnedSprite = spr_Shotzo_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.mysticDoo:
		spawnedItemIndex = obj_MysticDoo;
		spawnedSprite = spr_MysticDoo_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.bouncy:
		spawnedItemIndex = obj_Bouncy;
		spawnedSprite = spr_Bouncy_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.search:
		spawnedItemIndex = obj_Search;
		spawnedSprite = spr_Search_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.wapod:
		spawnedItemIndex = obj_Wapod;
		spawnedSprite = spr_Wapod_Normal_Pot;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.cappy:
		spawnedItemIndex = obj_Cappy;
		spawnedSprite = spr_Cappy_Normal_IdleL;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.coconut:
		spawnedItemIndex = obj_Coconut;
		spawnedSprite = spr_Coconut_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.noddy:
		spawnedItemIndex = obj_Noddy;
		spawnedSprite = spr_Noddy_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.blado:
		spawnedItemIndex = obj_Blado;
		spawnedSprite = spr_Blado_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.scarfy:
		spawnedItemIndex = obj_Scarfy;
		spawnedSprite = spr_Scarfy_Normal_CalmFly;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.rocky:
		spawnedItemIndex = obj_Rocky;
		spawnedSprite = spr_Rocky_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.grizzo:
		spawnedItemIndex = obj_Grizzo;
		spawnedSprite = spr_Grizzo_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.jungleBomb:
		spawnedItemIndex = obj_JungleBomb;
		spawnedSprite = spr_JungleBomb_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.glunk:
		spawnedItemIndex = obj_Glunk;
		spawnedSprite = spr_Glunk_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.kabu:
		spawnedItemIndex = obj_Kabu;
		spawnedSprite = spr_Kabu_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.burningLeo:
		spawnedItemIndex = obj_BurningLeo;
		spawnedSprite = spr_BurningLeo_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.tomatoo:
		spawnedItemIndex = obj_Tomatoo;
		spawnedSprite = spr_Tomatoo_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.onion:
		spawnedItemIndex = obj_Onion;
		spawnedSprite = spr_Onion_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.anemonee:
		spawnedItemIndex = obj_Anemonee;
		spawnedSprite = spr_Anemonee_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.poppyBrosJr:
		spawnedItemIndex = obj_PoppyBrosJr;
		spawnedSprite = spr_PoppyBrosJr_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.bobo:
		spawnedItemIndex = obj_Bobo;
		spawnedSprite = spr_Bobo_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.foley:
		spawnedItemIndex = obj_Foley;
		spawnedSprite = spr_Foley_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.nidoo:
		spawnedItemIndex = obj_Nidoo;
		spawnedSprite = spr_Nidoo_Normal_Ready;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.como:
		spawnedItemIndex = obj_Como;
		spawnedSprite = spr_Como_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.cairn:
		spawnedItemIndex = obj_Cairn;
		spawnedSprite = spr_Cairn_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.bomber:
		spawnedItemIndex = obj_Bomber;
		spawnedSprite = spr_Bomber_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.simirror:
		spawnedItemIndex = obj_Simirror;
		spawnedSprite = spr_Simirror_Normal_Walk;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.hothead:
		spawnedItemIndex = obj_Hothead;
		spawnedSprite = spr_Hothead_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.sparky:
		spawnedItemIndex = obj_Sparky;
		spawnedSprite = spr_Sparky_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.yolky:
		spawnedItemIndex = obj_Yolky;
		spawnedSprite = spr_Yolky_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.wheelie:
		spawnedItemIndex = obj_Wheelie;
		spawnedSprite = spr_Wheelie_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.laserBall:
		spawnedItemIndex = obj_LaserBall;
		spawnedSprite = spr_LaserBall_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.juckle:
		spawnedItemIndex = obj_Juckle;
		spawnedSprite = spr_Juckle_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.kookler:
		spawnedItemIndex = obj_Kookler;
		spawnedSprite = spr_Kookler_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.ufo:
		spawnedItemIndex = obj_Ufo;
		spawnedSprite = spr_Ufo_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.bouncySis:
		spawnedItemIndex = obj_BouncySis;
		spawnedSprite = spr_BouncySis_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.flamer:
		spawnedItemIndex = obj_Flamer;
		spawnedSprite = spr_Flamer_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.chuckie:
		spawnedItemIndex = obj_ChuckieBox;
		spawnedSprite = spr_Chuckie_Box;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.walky:
		spawnedItemIndex = obj_Walky;
		spawnedSprite = spr_Walky_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		#endregion
		
		#region Environment
		case maykrObjects.pointStarYellow:
		spawnedItemIndex = obj_PointStar;
		spawnedSprite = spr_PointStar_Yellow_Idle;
		spawnedState = 0;
		break;
		
		case maykrObjects.pointStarGreen:
		spawnedItemIndex = obj_PointStar;
		spawnedSprite = spr_PointStar_Green_Idle;
		spawnedState = 1;
		break;
		
		case maykrObjects.pointStarRed:
		spawnedItemIndex = obj_PointStar;
		spawnedSprite = spr_PointStar_Red_Idle;
		spawnedState = 2;
		break;
		
		case maykrObjects.pointStarBlue:
		spawnedItemIndex = obj_PointStar;
		spawnedSprite = spr_PointStar_Blue_Idle;
		spawnedState = 3;
		break;
		#endregion
	}
}