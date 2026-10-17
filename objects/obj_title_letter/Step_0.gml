// Se o mouse estar na colisao
if point_in_rectangle(mouse_x, mouse_y, x - coli_width / 2, y - coli_height / 2 - 8, x + coli_width / 2, y + coli_height / 2 - 8){
    tween(id, "image_xscale", 0.65, tween_animation.bounce, 0.25 * FPS_GAME)
    tween(id, "image_yscale", 0.65, tween_animation.bounce, 0.25 * FPS_GAME)
}
// Se nao estar
else {
	tween(id, "image_xscale", 0.5, tween_animation.bounce, 0.25 * FPS_GAME)
    tween(id, "image_yscale", 0.5, tween_animation.bounce, 0.25 * FPS_GAME)
}


/// Rodando o efeito de flutuacao
move_sin = (move_sin + move_sin_speed) % 360
move_sin_y = dcos(move_sin) * move_sin_distance
y = ystart + move_sin_y