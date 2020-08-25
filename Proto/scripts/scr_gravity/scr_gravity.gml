// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gravity(){
	if !place_meeting(x, y+1, obj_interactuable){
			if(progressiveFall < 1){
				progressiveFall += ln(progressiveFall+0.01)/fall_speed;
			}
			move_Y += progressiveFall;	
	}
}