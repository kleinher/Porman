// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_visualPlayer(){
	
	
		if(player.x > mouse_x and image_xscale > 0){
			obj_gun.rotated = true;
			image_xscale *= -1;	
//			image_yscale = 2;
		}else{
			if(image_xscale < 0 and player.x < mouse_x){
				image_xscale *= -1;		
				
				obj_gun.rotated = false;
			}
			if(player.doRun){
				obj_gun.rotated = false;
					
			}
			
			
			
		}	

	
}