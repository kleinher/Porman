/// @description Insert description here
// You can write your code in this editor
event_inherited();
depth = -1;
scr_visualPlayer();

//ANIMATIONS

//VARS
var d = obj_player_displayer;

//AS SOON AS WE START DOING THE JUMP, DEACTIVATE SQUASH AND DO STRETCH
if move_up {

	doSquash = -1;
	d.image_yscale = lerp(d.image_yscale, 2.5, 0.2)
	d.image_xscale = lerp(d.image_xscale, 1.5, 0.2)

}

//START SQUASH
if doSquash == 0 {

	//SET ALARM ONCE
	if alarm[0] == -4 {
		alarm[0] = room_speed/6
	}
	
	if alarm[0] > 0 {
		
		//DO SQUASH
		d.image_xscale = lerp(d.image_xscale, 3, 0.2) 
		d.image_yscale = lerp(d.image_yscale, 1.5, 0.2) 
	
	} else {
		
		doSquash = 1;
	}

}

//REVERSE SQUASH
if doSquash == 1 {
	
	if d.image_xscale > 2 {
		
		d.image_xscale = lerp(d.image_xscale, 2, 0.5)
		d.image_yscale = lerp(d.image_yscale, 2, 0.5)
	
	} else {
		
		//RESET VARS
		d.image_xscale = 2;
		doSquash = -1;
		alarm[0] = -4;
	
	}

}

