/// Rodando o efeito de flutuacao
move_sin = (move_sin + move_sin_speed) % 360
move_sin_y = dcos(move_sin) * move_sin_distance
y = ystart + move_sin_y

// Maquina de estados simples
switch (state) {
	case "inicio":
        
    break
    
    case "pergunta":
        
    break
    
    case "ganha":
        
    break
}




/// Debug
if keyboard_check_pressed(ord("R")){
    game_restart()
}