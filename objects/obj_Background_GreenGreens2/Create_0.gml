///@description Initialize Variables

//Event Inherited

event_inherited();

//Other Variables

sprite_index = choose(spr_Background_GreenGreens18,spr_Background_GreenGreens19,spr_Background_GreenGreens20);
if (global.season = seasons.halloween) sprite_index = choose(spr_Background_GreenGreens18_Halloween,spr_Background_GreenGreens19_Halloween,spr_Background_GreenGreens20_Halloween);
parallaxXAmplifier = 3000;
parallaxYAmplifier = 400;