// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_createDebri(debriAmount){
	repeat(debriAmount){
		x_random = irandom_range(obj_gun.x-5,obj_gun.x+5);
		y_random = irandom_range(obj_gun.y-5,obj_gun.y+20);
		inst = instance_create_layer(x_random,y_random+40,"Instances",obj_debri);	
		inst.speed = speed;
	}
}