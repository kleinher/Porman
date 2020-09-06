draw_self();
//DRAW EYE

if image_xscale == 2 
and sprite_index == spr_playerRun
{
draw_sprite_ext(s_player_eye, 0, x - 10, y - (sprite_height) + 15, image_xscale, image_yscale, 0, c_white, 1)
}

