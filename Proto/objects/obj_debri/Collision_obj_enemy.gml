/// @description Insert description here
// You can write your code in this editor
with(other){
	
	life -= 1;	
	if(life < 0){
		instance_destroy();	
		score +=10;
	}
	hitFeedback = 5;
	
}
instance_destroy();