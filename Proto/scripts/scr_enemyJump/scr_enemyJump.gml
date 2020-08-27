// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemyJump(){
	colisionAnterior = place_meeting(x-move_X,y+move_Y,obj_interactuable);

	if( move_X != 0){
		if( colisionAnterior){
			canJump = 4;
		}
		
	}
}