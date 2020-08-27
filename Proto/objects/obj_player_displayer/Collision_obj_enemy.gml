/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
instance_destroy();
instance_destroy(player);
instance_destroy(obj_gun);
draw_text(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),"PERDISTE");