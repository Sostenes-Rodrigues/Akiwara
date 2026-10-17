#region Desenhando as sprites
squiggle_begin()

// Sombra
draw_sprite_ext(spr_genio_sombra, image_index, x - 8, y - 6, 1, 1, image_angle, image_blend, 0.58)

// Me desenhando
draw_sprite_ext(spr_genio, image_index, x, y, 1, 1, image_angle, image_blend, 1)

/// Desenhando a caixa de dialogo
draw_sprite_ext(spr_dialogo, 0, box_posx + 2, box_posy + move_sin_y + 2, box_scale_x * image_xscale, box_scale_y * image_yscale, 0, c_black, 0.58)
draw_sprite_ext(spr_dialogo, 0, box_posx, box_posy + move_sin_y, box_scale_x * image_xscale, box_scale_y * image_yscale, 0, c_white, 1)

squiggle_end()
#endregion


#region Desenhando o texto da caixa
draw_set_font(global.font_game)

// Tamanho da caixa de dialogo
//box_width  = string_width_ext() - box_margin_left_offset - (box_margin_width * 2)

var _scale = 8
var _w_string = string_width("o") / _scale
squiggle_draw_text_ext_transformed_colour(box_posx + box_margin_left_offset + box_margin_width + 1, box_posy + box_margin_height + move_sin_y + 1, txt_current, -1, 250*_w_string - box_margin_width * 2 * _w_string - box_margin_left_offset * _w_string,
box_scale_x / _scale * image_xscale, box_scale_y / _scale * image_yscale, 0, c_black, c_black, c_black, c_black, 0.4)
squiggle_draw_text_ext_transformed_colour(box_posx + box_margin_left_offset + box_margin_width, box_posy + box_margin_height + move_sin_y, txt_current, -1, 250*_w_string - box_margin_width * 2 * _w_string - box_margin_left_offset * _w_string,
box_scale_x / _scale * image_xscale, box_scale_y / _scale * image_yscale, 0, my_text_color, my_text_color, my_text_color, my_text_color, 1)

draw_set_font(-1)
#endregion