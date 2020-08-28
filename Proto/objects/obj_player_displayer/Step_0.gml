x = player.x;
y = player.y;

if(!dead){
	if(player.doRun){
		if(player.move_right){
			scr_playerSpriteRun("right");
		}
		if(player.move_left){
			scr_playerSpriteRun("left");
		}
		first = true;
		
		
	}
	else{
		
		if(player.freeFall){
			sprite_index = spr_fall;
		}else{
			if(first){
				sprite_index = spr_blink;
				image_index = 0;
				alarm[0] = room_speed*2;
				first = false;
			}
			else if(alarm[0] < 0) {
				sprite_index = spr_blink;	
				image_index = 0;
				alarm[0] = choose(room_speed/4,
									room_speed*2,
									room_speed*3);
			}
		
			if(sprite_index == spr_blink and image_index > image_number-1){
				sprite_index = spr_player;
			}
			scr_visualPlayer();
		}
	}	
}else
{
	sprite_index = spr_dead;	
	instance_destroy(obj_gun);
	
}