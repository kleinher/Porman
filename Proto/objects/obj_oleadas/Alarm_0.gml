/// @description Insert description here
// You can write your code in this editor

instance_create_layer(2400,300,"Instances",obj_enemy);
instance_create_layer(3240,300,"Instances",obj_enemy);

if((room_speed*3600) == aux ){
	if(!(tRespawn <= 3)){
			tRespawn --;
	}
}

alarm[0] = room_speed*tRespawn;
