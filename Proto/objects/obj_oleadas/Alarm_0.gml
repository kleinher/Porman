/// @description Insert description here
// You can write your code in this editor

instance_create_depth(1450,-150,1,obj_enemy);
instance_create_depth(2750,-150,1,obj_enemy);

if((room_speed*3600) == aux ){
	if(!(tRespawn <= 3)){
			tRespawn --;
	}
}

alarm[0] = room_speed*tRespawn;
