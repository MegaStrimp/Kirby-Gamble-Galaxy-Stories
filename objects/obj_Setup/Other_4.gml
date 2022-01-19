///@description Room Start

//Reset Global Variables

global.healthbarMarkedEnemy = -1;

//Set Discord Rich Presence

rousr_dissonance_set_details(global.discordDetailText);
rousr_dissonance_set_state(global.discordStateText);
rousr_dissonance_set_large_image(global.discordLargeImage,global.discordLargeImageText);
rousr_dissonance_set_small_image(global.discordSmallImage,global.discordSmallImageText);

//Virtual Keys

if (global.isMobile) scr_VirtualKeysSet();