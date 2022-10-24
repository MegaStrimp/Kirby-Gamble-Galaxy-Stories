///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Other Variables

sprite_index = choose(spr_Background_GreenGreens21,spr_Background_GreenGreens22,spr_Background_GreenGreens23);
if (global.season = seasons.halloween) sprite_index = choose(spr_Background_GreenGreens21_Halloween,spr_Background_GreenGreens22_Halloween,spr_Background_GreenGreens23_Halloween);
parallaxXAmplifier = 3000;
parallaxYAmplifier = 400;