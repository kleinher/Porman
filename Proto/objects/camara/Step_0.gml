//SCREENSHAKE

if screenshake {
	
	//GO RIGHT TO THE PLAYER
	if distance_to_object(player) > 200 {
		
		x += (player.x - x)/10;
		y += (player.y - y)/10;
		
	} else {
	
		//PROCEED, CAN START SCREENSHAKE NOW
		if alarm[0] == -4 {
		alarm[0] = room_speed/2;
		}
	}
}

if alarm[0] > 0 {
	
	x += choose(-magnitude, magnitude);
	y += choose(magnitude, -magnitude);

}

if alarm[0] < 0 
and alarm[0] != -4 {
screenshake = false;
alarm[0] = -4;
}

//FOLLOW PLAYER
if(object_exists(player)) and !screenshake{
	
	var amount = 0.05;
	x=lerp(x,player.x, amount);
	y=lerp(y,player.y, amount);
}
