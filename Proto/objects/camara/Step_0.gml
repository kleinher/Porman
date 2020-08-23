/// @description Insert description here
// You can write your code in this editor
if(object_exists(player)){
	
	var amount = 0.05;
	x=lerp(x,player.x, amount);
	y=lerp(y,player.y, amount);
}

//SCREENSHAKE
if screenshake {
	
	if alarm[0] == -4 {
		alarm[0] = room_speed/2;
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
