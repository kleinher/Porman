/* SUBPLANO
// GIVES YOU THE SIGN OF THE CATESIAN
// PLAIN IN WICH THE ARGUMENT ANGLE LAYS
//
*/
function scr_cartesianCuadrant(angle){
	// QUADRANT IV
	if((0 < angle and angle < -90) or (270 < angle and angle < 360 )){
			x_plano = 1;
			y_plano = -1;
	}
	
	// QUADRANT I
	if((0 < angle and angle < 90) or (-360 < angle and angle < -270 )){
		x_plano = 1;
		y_plano = 1;
	}
	
	// QUADRANT II
	if((90 < angle and angle < 180) or (-180 < angle and angle < -270 )){
		x_plano = -1;
		y_plano = 1;
	}
	
	// QUADRANT IV
	if((180 < angle and angle < 270) or (-90 < angle and angle < -180 )){
		x_plano = -1;
		y_plano = -1;
	}
}