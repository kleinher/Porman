// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemyMovement(){
	move_X = 10;
	scr_gravity();
	scr_colitionSystem();
	
	x += move_X * enemyDirection;
	y += move_Y;
	
}