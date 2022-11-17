///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Other Variables

sprite_index = choose(spr_Background_AsteroidFields1,spr_Background_AsteroidFields13,spr_Background_AsteroidFields14,spr_Background_AsteroidFields15,spr_Background_AsteroidFields16);
if (global.season = seasons.halloween) sprite_index = choose(spr_Background_AsteroidFields1_Halloween,spr_Background_AsteroidFields13_Halloween,spr_Background_AsteroidFields14_Halloween,spr_Background_AsteroidFields15_Halloween,spr_Background_AsteroidFields16_Halloween);
spawnChild = true;