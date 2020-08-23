x = player.x;
y = player.y;

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