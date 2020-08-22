// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movement(){
	
	
	//--------------SPEED BY WITCH THE PLAYER MOVES NORMALLY
	spd = 1;
	//--------------WHERE I WANT TO MOVE
	move_up = keyboard_check(ord("W"));
	move_down = keyboard_check(ord("S"));
	move_left = keyboard_check(ord("A"));
	move_right = keyboard_check(ord("D"));
	jump = keyboard_check_pressed(vk_space);


	//--------------------PLAYER MOVEMENT CALCULUS
	k = (move_down*0.5 - move_up) ;
	move_X = (move_right - move_left) * spd;
	move_Y = fall_speed * freeFall;
	//-----------GRAVITY
if !place_meeting(x, y+1, obj_interactuable){
	move_Y += fall_speed;	
}

if(move_up) or (move_down){
		canJump = 3;
}else{// SHOOTING BULLETS
	if(mouse_check_button_pressed(mb_left)){
		var inst = instance_create_layer(x,y,"Bullets", obj_bullet);
		inst.direction = point_direction(x,y,mouse_x,mouse_y);
	}
}
if(canJump > 0 ){ 
	canJump--;
	move_Y = jSpeed * k;
}

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
			freeFall = false;
			move_Y = 0;
		}
	}

	//--------------------MODIFY THE PLAYER POSITION TO MAKE MOVEMENT EFFECTIVE
	x += move_X;
	y += move_Y;

}