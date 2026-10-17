// Inherit the parent event
event_inherited();


/// Desenhando o subtituto
draw_set_font(global.font_game)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed_colour(x + 1, y - 40 + 1, "O gênio da matematica", 0.15, 0.15, image_angle, c_black, c_black, c_black, c_black, 0.58)
draw_text_transformed(x, y - 40, "O gênio da matematica", 0.15, 0.15, image_angle)

draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)