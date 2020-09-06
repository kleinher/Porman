/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_alpha(al)



draw_set_font(fnt_2)
draw_set_color(c_black)
var diff = 90

//SINE
sinValue += (pi * 2) / room_speed; 
if sinValue >= pi * 2 {sinValue = 0;}
var s = sin(sinValue) * 4;

draw_text_ext(room_width/2 - 10, (room_height/5 + 10 - diff) + s, "Porman", 15, 2000)	
draw_set_color(make_color_rgb(165, 218, 73))
draw_text_ext(room_width/2, room_height/5 - diff + s, "Porman", 15, 2000)	

var diff2 = 320
draw_set_font(fnt_0)
draw_set_halign(fa_right)
draw_text_ext(room_width/2 + diff2, room_height/2, "Controles:\n"+"WASD\n"+"Espacio\n"+"Mouse click\n", 30, 320)
						   
draw_set_alpha(blink)
draw_text_ext(room_width/2 + diff2, room_height/1.33, "Press Space to begin", 30, 320 )	

//CREDITS
draw_set_alpha(al);
draw_set_font(fnt_3)
draw_set_color(c_white);
draw_set_halign(fa_left)
draw_set_valign(fa_bottom)
draw_text_ext(20, 720 - 20, "Programmer: Hernan Kleinubing\n2D Artist: Gabriel Pelle\nExecutive Producer: Matias Schmied", 25, 9999);