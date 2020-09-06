if instance_exists(obj_menuPrincipal)
and obj_menuPrincipal.al == 1 {
	
	//if al < 1 {al += 0.05}
}

image_alpha = al;

//LERP UPWARDS
if ler {
	
	if y > 0 {
	y = lerp(y, 0, 0.2);
	}
	
		
	if !played{played = audio_play_sound(snd_menuObj, 10, false)}

}

if alarm[0] < 0 {
ler = true;
}

//CLOUDES
if image_index == 2 {

	x += 2;
	if x > room_width {
	x = -room_width;
	}

}