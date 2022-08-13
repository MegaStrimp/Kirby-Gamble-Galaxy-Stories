///@description Maykr - Object Attributes

function scr_Maykr_ObjectAttributes(argument0,argument1)
{
	//Variables
	
	var spawnedItemString = argument0;
	var whichAttributeToCheck = argument1;
	
	var hasOptionsButton = false;
	var hasDirectionButton = false;
	
	var hasPhysicsBubble = false;
	var hasSkinsBubble = false;
	var hasPalettesBubble = false;
	var hasAttributesBubble = false;
	var hasProportionsBubble = false;
	var hasOnDeathBubble = false;
	var hasMusicBubble = false;
	
	//Object Attributes
	
	switch (spawnedItemString)
	{
		case maykrObjects.waddleDee:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.waddleDoo:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.brontoBurt:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.twizzy:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.tookey:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.sirKibble:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.gordo:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.bloodGordo:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.shotzo:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.mysticDoo:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.bouncy:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.search:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.wapod:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.cappy:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.coconut:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.noddy:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.blado:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.scarfy:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.rocky:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.grizzo:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.jungleBomb:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.glunk:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.kabu:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.burningLeo:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.tomatoo:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.onion:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.anemonee:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.poppyBrosJr:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.bobo:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.foley:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.nidoo:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.como:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.cairn:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.bomber:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.simirror:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.hothead:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.sparky:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.yolky:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.wheelie:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.laserBall:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.juckle:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.kookler:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.ufo:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.bouncySis:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.flamer:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.chuckie:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
		
		case maykrObjects.walky:
		hasOptionsButton = true;
		hasDirectionButton = true;
		break;
	}
	
	switch (whichAttributeToCheck)
	{
		case "optionsButton":
		return hasOptionsButton;
		break;
		
		case "directionButton":
		return hasDirectionButton;
		break;
	}
}