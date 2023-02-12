///@description Initialize Variables

//Move Snap

move_snap(6,6);

//Other Variables

x = mouse_x;
y = mouse_y;
debugSelected = 0;
debugSelectedMax = -1;
debugStateSelected = 0;
debugStateSelectedMax = 0;
debugSpriteSelected = 0;
debugSpriteSelectedMax = 0;
debugSprite = spr_Wall;
debugIndex = debugSpriteSelected;
debugAlpha = .5;
debugXScale = 1;
debugYScale = 1;
debugPaletteIndex = -1;
debugPaletteNumber = 0;
debugPaletteNumberMax = 1;
spawnerMode = false;

//Enums

enum debugObject
{
	wall,
	platform,
	ladder,
	starBlock,
	bigStarBlock,
	durableBlock,
	crate,
	breakingWall,
	bombBlock,
	bombSolidBlock,
	bombSolidBlockInvis,
	movingCloud,
	bumper,
	spring,
	trampoline,
	bouncyCloud,
	spike,
	pointStar,
	abilityTrophy,
	itemChest,
	key,
	keyGate,
	cuttableGrass,
	food,
	pepBrew,
	maximTomato,
	goldenTomato,
	invinciblityCandy,
	mintLeaf,
	oneUp,
	backgroundEnvironment,
	fallingAsteroid,
	antiFloatArea,
	abilityBlock,
	waddleDee,
	waddleDoo,
	brontoBurt,
	twizzy,
	tookey,
	sirKibble,
	gordo,
	bloodGordo,
	//ghostGordo,
	waddleBlock,
	shotzo,
	mysticDoo,
	bouncy,
	mrBoogie,
	searches,
	hiveDrone,
	wapod,
	flamebelch,
	cappy,
	broomHatter,
	coconut,
	noddy,
	blado,
	scarfy,
	rocky,
	grizzo,
	jungleBomb,
	glunk,
	kabu,
	burningLeo,
	tomatoo,
	onion,
	anemonee,
	poppyBrosJr,
	bobo,
	foley,
	nidoo,
	como,
	cairn,
	bomber,
	simirror,
	gim,
	hothead,
	sparky,
	yolky,
	wheelie,
	laserBall,
	juckle,
	kookler,
	ufo,
	bouncySis,
	flamer,
	chuckie,
	walky,
	mysticBlock,
	plasmaWisp,
	cerulean,
	wizzer,
	
	IMSICKOFTHISGUY,
	
	length
}
debugSelectedMax = debugObject.length - 1;

//Timers

debugAlphaTimerMax = 45;
debugAlphaTimer = debugAlphaTimerMax;