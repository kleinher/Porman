/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


move_wrap(true,true,spr_enemies/2);

if(aux != enemyDirection){
	aux = enemyDirection;

	image_xscale *= enemyDirection;
}
if(state = scr_movement)
{
	script_execute(scr_enemyMovement);	
}
else
{
	script_execute(state);
}
