// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shootBullet(){
	mouse_left = mouse_check_button_pressed(mb_left);
	chargeBigBullet = keyboard_check(vk_space);
	
	//SHOOT THE LITTLE BULLET
	if(mouse_left and !chargeBigBullet){
		charginGun = 0;
		//var inst = instance_create_layer(obj_gun.x_gun,obj_gun.y_gun,"Bullets", obj_bullet);
		//inst.direction = point_direction(x,y,mouse_x,mouse_y);
		
		scr_createDebri(200,10);
		audio_play_sound(snd_smallShot,1,false);
	}else{
		
		//CHARGE THE BIG BULLET
		if(chargeBigBullet){
			charginGun++;
			
			//SHOOT THE BIG BULLET
			if(charginGun > 30){
				charginGun = 0;
				var inst = instance_create_layer(obj_gun.x_gun,obj_gun.y_gun,"Bullets", obj_bigBullet);
				
				//
				if(!player.move_up){inst.direction = point_direction(x,y,mouse_x,mouse_y); }
			
				
				//DEBRI
				scr_createDebri(50,obj_bigBullet.speed);
				audio_play_sound(snd_shoot,1,false);
			}
		}
	}
}