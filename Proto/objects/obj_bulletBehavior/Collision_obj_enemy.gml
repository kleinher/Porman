/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
with(other)
{
	life -= 50;
	if(life <= 0){
		instance_destroy();
		score += 100;
	}
	
}
	
instance_destroy();	