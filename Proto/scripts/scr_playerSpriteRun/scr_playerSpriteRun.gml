// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerSpriteRun(_direction){
	sprite_index = spr_playerRun;
	if(image_xscale < 0){
		if(_direction == "left"){
			image_xscale = image_xscale * -1;	
		}
	}else
	{
		if(_direction == "right"){
			image_xscale = image_xscale * -1;
		}
		
	}
	

}