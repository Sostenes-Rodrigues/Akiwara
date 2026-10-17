/// Desenhando a letra
draw_set_font(global.font_game)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var _title_col = c_white
squiggle_draw_text_ext_transformed_colour(x + 2, y + 2, letter, -1, -1, image_xscale, image_yscale, image_angle, _title_col, _title_col, _title_col, _title_col, 0.58)
squiggle_draw_text_ext_transformed_colour(x, y, letter, -1, -1, image_xscale, image_yscale, image_angle, image_blend, image_blend, image_blend, image_blend, image_alpha)

draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)


// Debug da colisao
//draw_set_colour(c_red)
//draw_rectangle(x - coli_width / 2, y - coli_height / 2 - 8, x + coli_width / 2, y + coli_height / 2 - 8, true)
//draw_set_colour(c_white)