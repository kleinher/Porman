/// @description Insert description here
// You can write your code in this editor
event_inherited();
jump = false;
k = 0;

doSquash = -1;

//ANIMATION ALARM
alarm[0] = -4;

//CREATE THE OBJECT THAT WILL DISPLAY MY SPRITES
instance_create_depth(x, y, depth, obj_player_displayer);

// MOVEMENT SPEED PLAYER
runSpeed = 13;
hSpeed = 5;


doRun = false;

charginGun = 0;