squiggle_begin()

// Sombra
draw_sprite_ext(my_shade_spr, image_index, x + 5, y + 3, effect_xscale, effect_yscale, image_angle, image_blend, 0.58)

// Me desenhando
draw_sprite_ext(sprite_index, image_index, x, y, effect_xscale, effect_yscale, image_angle, image_blend, 1)

squiggle_end()


/// Desenhando o texto
draw_set_font(global.font_game)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

squiggle_draw_text_ext_transformed_colour(x + 1, y + 1 + 1, my_text, -1, -1, text_scale_base * effect_xscale, text_scale_base * effect_yscale, image_angle, c_black, c_black, c_black, c_black, 0.4)
squiggle_draw_text_ext_transformed_colour(x, y + 1, my_text, -1, -1, text_scale_base * effect_xscale, text_scale_base * effect_yscale, image_angle, my_text_color, my_text_color, my_text_color, my_text_color, 0.9)

draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)