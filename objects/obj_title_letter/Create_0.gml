// Qual e a minha letra
//letter = "A"

/// Sizes para colisao
coli_width = 30
coli_height = 36

// Escala da letra
image_xscale = 0.5
image_yscale = 0.5


/// Variveis para o movimento senoidal
move_sin = irandom(359)
move_sin_distance = 5
move_sin_speed = random_range(1, 2)
move_sin_y = dcos(move_sin) * move_sin_distance

y = ystart + move_sin_y