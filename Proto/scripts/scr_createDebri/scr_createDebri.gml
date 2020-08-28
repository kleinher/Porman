// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_createDebri(debriAmount,_speed){
	repeat(debriAmount){
		angle = point_direction(x,y,mouse_x,mouse_y);
		x_plano=1;
		y_plano=1;
		//GET THE CUADRANT OF THE CURSOR
		scr_cartesianCuadrant(angle);
		
		if(player.move_up){
			y_plano=1;
			x_random = irandom_range(obj_gun.x-5*x_plano,obj_gun.x+5*x_plano);
			y_random = irandom_range(obj_gun.y+35*y_plano,obj_gun.y+40*y_plano);
		}else{
			width_gun = obj_gun.sprite_width * obj_gun.image_xscale;
			heigth_gun = obj_gun.sprite_height * obj_gun.image_yscale;
			//show_debug_message("X = "+ string(heigth_gun*cos(angle)));
			//show_debug_message("Y = "+ string(heigth_gun*sin(angle)));
			x_random = irandom_range(obj_gun.x+heigth_gun*cos(degtorad(angle)),obj_gun.x+heigth_gun*cos(degtorad(angle)));
			y_random = irandom_range(obj_gun.y-heigth_gun*sin(degtorad(angle)),obj_gun.y-heigth_gun*sin(degtorad(angle)));
		}
		
		//CREATION OF DEBRI ITSELF
		inst = instance_create_layer(x_random,y_random,"Instances",obj_debri);	
		
		inst.direction = irandom_range(angle -10 , angle +10);
		
		if(player.move_up){
			y_plano*=1;
			inst.direction = irandom_range(angle -40 , angle +40);
		}
		inst.speed = _speed;
		
		
		//RAINBOW STYLE
		rojo = irandom_range(0,255);
		verde = irandom_range(0,255);
		azul = irandom_range(0,255);
		inst.image_blend = make_color_rgb(rojo,verde,azul);
		}
}