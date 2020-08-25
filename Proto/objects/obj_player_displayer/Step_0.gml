x = player.x;
y = player.y;

if(player.spd == player.runSpeed and player.move_right and player.doRun){
		scr_playerSpriteRun("right");
	}
	else{
		if(player.move_left and player.spd == player.runSpeed and player.doRun){
			scr_playerSpriteRun("left");
		}
		else{
			if(!player.move_right and !player.move_left){
				sprite_index = spr_player;	
			}
			if(alarm[0] < 0) {
				sprite_index = spr_blink;	
				image_index = 0;
				alarm[0] = choose(room_speed/4,
								  room_speed*2,
								  room_speed*3);
			}
			if(sprite_index == spr_blink and image_index > image_number-1){
				sprite_index = spr_player;
			}
		}	
		
	}	