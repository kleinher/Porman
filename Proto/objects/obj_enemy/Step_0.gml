/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


move_wrap(true,true,spr_enemies/2);

if(dir != enemyDirection){
	dir = enemyDirection;

	image_xscale *= enemyDirection;
}
if(state == scr_movement)
{
	script_execute(scr_enemyMovement);	
}
else
{
	script_execute(state);
}

runSpeed = 6 - hitFeedback;
image_speed = 1;
image_blend = colorEnemigo;
if(hitFeedback > 0)
{
	image_speed = 0.5;
	rojo = irandom_range(0,255);

	image_blend = make_color_rgb(rojo,5,10);
	hitFeedback-= 0.3;	
}