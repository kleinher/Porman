/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var i = 0, array_len = array_length_1d(menu_pages);
repeat(array_len){
	ds_grid_destroy(menu_pages[i]);
	i++;
}