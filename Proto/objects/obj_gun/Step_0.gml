/// @description Insert description here
// You can write your code in this editor
if(instance_exists(player)){
	if(rotated){
		x_gun= player.x-7*2;
		y_gun= player.y-11*2;
	}else{
		x_gun= player.x+7*2;
		y_gun= player.y-11*2;
	}
	if(obj_player_displayer.running){
		x_gun= player.x;
		y_gun= player.y-player.sprite_height/2;;
	}
	x=x_gun;
	y=y_gun;
}
if(!player.move_up){
	image_angle = point_direction(x,y,mouse_x,mouse_y);	
}

depth = player.depth-1;

image_xscale = 2;
image_yscale = 2;