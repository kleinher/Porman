// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_createDebri(){
	repeat(5){
		x_random = irandom_range(-sprite_get_width(obj_gun),sprite_get_width(obj_gun));
		instance_create_layer(obj_gun.x+x_random,obj_gun.y+ obj_gun.sprite_height,"Instances",obj_debri);	
	}
}