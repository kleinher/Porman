/// @description Insert description here
// You can write your code in this editor
//if al < 1 {al += 0.05;}

if (keyboard_check_pressed(vk_space))
{
  room_goto(Room1);	
  audio_stop_all();
}

with(oCover){

	if image_index == 2 {
		
		if y < 10 {
			
			obj_menuPrincipal.addAl = true;
			
		}
	}

}



if addAl {
	
	if al < 1 {al += 0.1;}	
}

if alarm[0] < 0 
and al == 1
{
	if blink == 0 {blink = 1} else {blink = 0};	
	alarm[0] = room_speed/4;

}
