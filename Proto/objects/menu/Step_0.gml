if(!global.pause) exit;

input_up_p		= keyboard_check_pressed(ord("W"));
input_down_p	= keyboard_check_pressed(ord("S"));
input_enter_p	= keyboard_check_pressed(vk_enter);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

if(inputting){
	switch(ds_grid[# 1, menu_option[page]]){
		case menu_element_type.page_transfer: break;
		case menu_element_type.script_runner: break;
		case menu_element_type.shift: 
			var hinput = keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"));
			if( hinput != 0 ){
				
				//audio
				ds_grid[# 3, menu_option[page]]	+= hinput;
				ds_grid[# 3, menu_option[page]]	= clamp(ds_grid[# 3, menu_option[page]],0, array_length_1d(ds_grid[# 4, menu_option[page]]));
			}
		break;
		case menu_element_type.slider:
			switch(menu_option[page]){
				case 0: if(!audio_is_playing(snd_thriller)) { audio_play_sound(snd_thriller,1,false); } break;
				case 1: if(!audio_is_playing(snd_blink)) { audio_play_sound(snd_blink,1,false);} break;
				case 2: if(!audio_is_playing(snd_musica)) { audio_play_sound(snd_musica,1,false);} break;
				
			}
			var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
			if( hinput != 0 ){
				//dont put audio
				ds_grid[# 3, menu_option[page]]	+= hinput*0.01;
				ds_grid[# 3, menu_option[page]]	= clamp(ds_grid[# 3, menu_option[page]],0, 0.5);
				script_execute(ds_grid[# 2, menu_option[page]],ds_grid[# 3, menu_option[page]]);
			}
		break;
		case menu_element_type.toggle:
			var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
			if( hinput != 0 ){
				//audio
				ds_grid[# 3, menu_option[page]]	+= hinput;
				ds_grid[# 3, menu_option[page]]	= clamp(ds_grid[# 3, menu_option[page]],0, 1);
			}
		break;
	}	
	
	
}else{
	var ochange = input_down_p - input_up_p;
	if(ochange != 0){
		menu_option[page]+=ochange;	
		if(menu_option[page] > ds_height-1){
			menu_option[page] = 0;	
		}
		if(menu_option[page] < 0 ){
			menu_option[page] = ds_height - 1;	
		}
		//audio
	
	}	
}

if(input_enter_p){
	switch(ds_grid[# 1, menu_option[page]]){
		case menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
		case menu_element_type.script_runner: script_execute(ds_grid[# 2, menu_option[page]]) break;
		case menu_element_type.shift:
		case menu_element_type.slider:
		case menu_element_type.toggle: if(inputting){ script_execute(ds_grid[# 2, menu_option[page]],ds_grid[# 3, menu_option[page]]);};
			inputting = !inputting;
			break;
		
	}
	//audio
}