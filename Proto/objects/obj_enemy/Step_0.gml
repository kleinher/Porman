/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
script_execute(state);

move_wrap(true,true,spr_enemies/2);

if(aux != enemyDirection){
	aux = enemyDirection;

	image_xscale *= enemyDirection;
}
