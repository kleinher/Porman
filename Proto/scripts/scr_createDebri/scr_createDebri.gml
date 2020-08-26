// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_createDebri(debriAmount,_speed){
	repeat(debriAmount){
		angle = point_direction(x,y,mouse_x,mouse_y);
		x_plano=1;
		y_plano=1;
		//GET THE CUADRANT OF THE CURSOR
		scr_cartesianCuadrant(angle);
		
		
		x_random = irandom_range(obj_gun.x-5*x_plano,obj_gun.x+5*x_plano);
		y_random = irandom_range(obj_gun.y-5*y_plano,obj_gun.y+20*y_plano);
		inst = instance_create_layer(x_random,y_random,"Instances",obj_debri);	
		inst.speed = _speed;
		inst.direction = irandom_range(angle -20 , angle +20);
	}
}