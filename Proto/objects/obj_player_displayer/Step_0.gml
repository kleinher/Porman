x = player.x;
y = player.y;
scr_playerSpriteIdle();
scr_playerSpriteRun();

if(player.spd == 13 and player.move_right){
		sprite_index = spr_playerRun;
		if(image_xscale > 0){
				image_xscale = image_xscale * -1;	
		}
	}
	else{
		if(player.move_left and player.spd == 13){
			sprite_index = spr_playerRun;
			if(image_xscale < 0){
				image_xscale = image_xscale * -1;	
			}
		}
		else{
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
		