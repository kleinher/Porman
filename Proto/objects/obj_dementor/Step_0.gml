/// @description Insert description here
// You can write your code in this editor
dir = point_direction(x,y,player.x,player.y);
move_X = cos(degtorad(dir))*spd;
move_Y = -1*sin(degtorad(dir))*spd;



scr_colitionSystem();
x += move_X;
y += move_Y;

