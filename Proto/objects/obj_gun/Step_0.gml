/// @description Insert description here
// You can write your code in this editor
if(instance_exists(player)){
	if(rotated){
		x= player.x-7;
		y= player.y-11;
	}else{
		x= player.x+7;
		y= player.y-11;
	}
	
}
image_angle = point_direction(x,y,mouse_x,mouse_y);
depth = player.depth-1;