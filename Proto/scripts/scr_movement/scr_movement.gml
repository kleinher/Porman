// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movement(){


	//--------------SPEED BY WITCH THE PLAYER MOVES NORMALLY
	//--------------WHERE I WANT TO MOVE
	move_up = keyboard_check(ord("W"));
	move_down = keyboard_check(ord("S"));
	move_left = keyboard_check(ord("A"));
	move_right = keyboard_check(ord("D"));
	jump = keyboard_check_pressed(vk_space);
	

	//--------------------PLAYER MOVEMENT CALCULUS
	k = (move_down - move_up) ;
	move_X = (move_right - move_left) * spd;
	
if( abs(move_left - move_right)){
	if(!move_up){
		doRun = true;
	}
}else{
	doRun = false;	
	
}


if((move_up)){
	
	scr_createDebri(5,1);
	if(!audio_is_playing(snd_propultion)){audio_play_sound(snd_propultion,1,false);}
	spd = 3;
	obj_gun.image_angle = -90;
	obj_gun.direction =  -90;	
	if(propulsionSpeed < 20){
		propulsionSpeed += 0.1;
	}
	//-----------------PROPULTION MOMENTUM: when you go up you can change the added 
	//				   momentum when the W key is realesed changing the maximum valeu of canJump
	if(canJump < 3){
		canJump += ln(propulsionSpeed);
	}
}else{
	audio_stop_sound(snd_propultion);
	if(canJump < 0){
		canJump= 0;
		progressiveFall = 1;
	}
	
	// SHOOTING BULLETS
	scr_shootBullet();
	
	//-----------GRAVITY
	scr_gravity();
}
//---------------CAIDA DEL SALTO PROGRESIVA
if(canJump > 0 ){ 

	canJump--;
	move_Y = jSpeed*-1;
}

scr_colitionSystem();
	//--------------------MODIFY THE PLAYER POSITION TO MAKE MOVEMENT EFFECTIVE

	x += move_X;
	y += move_Y;

}