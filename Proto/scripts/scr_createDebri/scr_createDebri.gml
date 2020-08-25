// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_createDebri(){
	repeat(5){
		x_random = irandom_range(-sprite_get_width(obj_gun)/4,sprite_get_width(obj_gun)/4);
		y_random = irandom_range(sprite_get_height(obj_gun)*1.3,sprite_get_height(obj_gun)*1.5);
		instance_create_layer(obj_gun.x+x_random,obj_gun.y+y_random,"Instances",obj_debri);	
	}
}