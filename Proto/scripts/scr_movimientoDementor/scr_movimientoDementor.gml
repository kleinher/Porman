// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movimientoDementor(){
dir = point_direction(x,y,player.x,player.y);
move_X = cos(degtorad(dir))*spd;
move_Y = -1*sin(degtorad(dir))*spd;



scr_colitionSystem();
x += move_X;
y += move_Y;
}