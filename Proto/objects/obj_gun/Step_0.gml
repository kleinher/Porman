/// @description Insert description here
// You can write your code in this editor
if(instance_exists(player)){
	if(rotated){
		x= player.x-7*2;
		y= player.y-11*2;
	}else{
		x= player.x+7*2;
		y= player.y-11*2;
	}
	if(obj_player_displayer.running){
		x= player.x;
		y= player.y-player.sprite_height/2;;
	}
	
}
if(!player.move_up){
	image_angle = point_direction(x,y,mouse_x,mouse_y);	
}

depth = player.depth-1;

image_xscale = 2;
image_yscale = 2;