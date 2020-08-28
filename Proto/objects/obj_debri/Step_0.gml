/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_alpha -= 0.01;
rojo = irandom_range(0,255);
verde = irandom_range(0,255);
azul = irandom_range(0,255);
image_blend = make_color_rgb(rojo,verde,azul);
if(image_alpha  < 0){
	instance_destroy();	
}