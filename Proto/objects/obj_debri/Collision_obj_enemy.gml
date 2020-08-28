/// @description Insert description here
// You can write your code in this editor
with(other){
	
	life -= 0.01;	
	if(life < 0){
		instance_destroy();	
	}
	hitFeedback = 5;
	
}
instance_destroy();