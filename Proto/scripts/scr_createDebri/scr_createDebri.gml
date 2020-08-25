// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_createDebri(){
	repeat(5){
		x_random = irandom_range(-sprite_get_width(player),sprite_get_width(player));
		instance_create_layer(x+x_random,y,"Instances",obj_debri);	
	}
}