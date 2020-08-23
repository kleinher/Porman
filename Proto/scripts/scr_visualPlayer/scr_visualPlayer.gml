// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_visualPlayer(){
	if(player.x > mouse_x){
		obj_gun.rotated = true;
		image_xscale = -1;	
	}else{
		obj_gun.rotated = false;
		image_xscale = 1;
	}	
	
	
}