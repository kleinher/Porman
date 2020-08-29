
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
	
	var amount = 0.1;
	x=lerp(x,player.x, amount);
	y=lerp(y,player.y - 150, amount);
}

//PARALAX

if(act_paralax != pas_paralax){  

	if(layer_exists("Back_Trees")){ layer_x("Back_Trees",x/1.5);}
	if(layer_exists("Middle_Trees")){ layer_x("Middle_Trees",x/3);}
	if(layer_exists("Front_Trees")){ layer_x("Front_Trees",x/5);}
	//if(layer_exists("Front_front_trees")){ layer_x("Front_front_trees",x/18);}

}
