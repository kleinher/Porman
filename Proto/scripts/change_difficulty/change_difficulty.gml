// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_difficulty(){

	switch(argument0){
		case 0:
		//easy
		show_debug_message("facil");
		break;
		case 1:
		show_debug_message("medio");
		//medium
		break;
		case 2:
		show_debug_message("dificil");
		//hard
		break;
	}
}