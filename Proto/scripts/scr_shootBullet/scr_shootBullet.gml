// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shootBullet(){
if(mouse_check_button_pressed(mb_left)){
		var inst = instance_create_layer(obj_gun.x_gun,obj_gun.y_gun,"Bullets", obj_bullet);
		inst.direction = point_direction(x,y,mouse_x,mouse_y);
	}
}