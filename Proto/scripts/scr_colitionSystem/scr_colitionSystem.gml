// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_colitionSystem(){
//-------------------DETECT COLITION WITH SOME OBJECT
	//----- HORIZONTAL
	if(move_X != 0 ){
		if(place_meeting(x+move_X,y,obj_interactuable)){
			repeat(abs(move_X)){
				if(!place_meeting(x+sign(move_X),y,obj_interactuable)){ x += sign(move_X) }
				else
				{
					break;	
				}
			}
			move_X = 0;
		}
	}

	//----- VERTICAL
	if(move_Y != 0 ){
		if(place_meeting(x,y+move_Y,obj_interactuable)){
			repeat(abs(move_Y)){
				if(!place_meeting(x,y+sign(move_Y),obj_interactuable)){ y += sign(move_Y) }
				else{	break;	}
			}
			
			//FLAG SCREENSHAKE
			//camara.screenshake = true;
			camara.magnitude = progressiveFall / 10; 
			
			//FLAG ANIMATION SQUASH
			doSquash = 0;		
			alarm[0] = -4;
			progressiveFall = 1;
			freeFall = false;
			move_Y = 0;
			spd = runSpeed;
			
			
		}
		
	}
}