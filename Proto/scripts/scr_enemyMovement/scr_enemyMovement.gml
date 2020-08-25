// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemyMovement(){
	move_X = move_X * enemyDirection; 
	x += move_X;
	y += move_Y;
	scr_gravity();
	scr_colitionSystem();

}