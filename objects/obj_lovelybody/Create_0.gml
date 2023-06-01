/// @description Insert description here
// Lovelybody just pretty much animates under the head and then pops when the head is destroyed

//sprites
headOffset = -28;

//other variables

character = 0;
sprIdle = spr_Lovely_Normal_Face;
sprAttack = spr_Lovely_Normal_Face_Attack;
sprAttackDiagonal = spr_Lovely_Normal_Face_Attack_Diagonal;
sprFaceIdle = spr_Lovely_Normal_Eyes_Blink;
sprFaceWink = spr_Lovely_Normal_Eyes_Wink;
sprFaceHurt = spr_Lovely_Normal_Eyes_Damaged;
sprBalls = spr_Lovely_Normal_Balls;
sprBody = spr_Lovely_Normal_Body;
sprHurt = spr_Lovely_Normal_Face_Damaged;
paletteIndex = spr_Lovely_Normal_Palette_BloomingFlower;
dirX = 1;
walkDirX = 1;
dirY = 1;
walkDirY = 1;
state = 0;


//creates the actual enemy
myHead = instance_create_depth(x,y+headOffset*image_yscale,depth,obj_Lovely);
myHead.myBody = self;
myHead.character = character;
myHead.sprIdle = sprIdle;
myHead.sprAttack = sprAttack;
myHead.sprAttackDiagonal = sprAttackDiagonal;
myHead.sprFaceIdle = sprFaceIdle;
myHead.sprFaceWink = sprFaceWink;
myHead.sprFaceHurt = sprFaceHurt;
myHead.sprBalls = sprBalls;
myHead.sprHurt = sprHurt;
myHead.sprite_index = sprIdle;
myHead.paletteIndex = paletteIndex;
myHead.image_xscale = image_xscale;
myHead.dirX = dirX;
myHead.walkDirX = walkDirX;
myHead.image_yscale = image_yscale;
myHead.dirY = dirY;
myHead.walkDirY = walkDirY;
myHead.state = state;



//Body variables
animSpeed = .25;
animLength = 4;
image_speed = animSpeed;

speedAnimationTimer = room_speed*8;
speedAnimationTimerMax = room_speed*8;
