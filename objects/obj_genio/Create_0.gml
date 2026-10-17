/// Variaveis para a logica da adivinhacao
logic_actual = 50
logic_minimo = 0
logic_maximo = 100

/// Variaveis para o movimento senoidal
move_sin = 0
move_sin_distance = 8
move_sin_speed = 2.5
move_sin_y = 0


// Metodo para reiniciar a escala
reset_effect_text_scale = function(){
    image_xscale = 0.1
    image_yscale = 0.1
    
    tween(id, "image_xscale", 1, tween_animation.bounce, 0.28 * FPS_GAME)
    tween(id, "image_yscale", 1, tween_animation.bounce, 0.28 * FPS_GAME)
}
reset_effect_text_scale()


#region Para caixa de dialogo
/// Posicao da caixa de dialogo
box_posx = x + 164
box_posy = y + 105

/// Escala da sprite do dialogo
box_scale_x = 1
box_scale_y = 1

// Cor do texto
my_text_color = make_colour_rgb(55, 55, 55)

// Estado
state = "inicio"  // pergunta  -  ganha


// Textos do inicio
array_txts_begin = ["Pense em um número de 0 a 100", "Eu vou advinhar o seu número", "Pensou?"]
array_txts_begin_cont = 0

// Texto atual do texto
txt_current = array_txts_begin[array_txts_begin_cont]

/// Tamanhos da sprite
var _box_spr_width  = sprite_get_width(spr_dialogo)
var _box_spr_height = sprite_get_height(spr_dialogo)

/// Margem para o texto
box_margin_left_offset = 12
box_margin_width  = 10
box_margin_height = 3

// Tamanho da caixa de dialogo
box_width  = _box_spr_width - box_margin_left_offset - (box_margin_width * 2)
#endregion


#region Para o botao de "avancar"
var _inst_button = instance_create_layer(370, 235, "Instances_UI", obj_botao_game)
with (_inst_button) {
	my_text = "avançar"
    //my_text_color = c_maroon
    
    text_scale_base *= 0.75
	
    effect_xscale_press = 0.8
    
    effect_yscale_press = 1.4
    
    my_function = function(){
        with (obj_genio) {
        	reset_effect_text_scale()
            
            var _txts_legth = array_length(array_txts_begin)
            array_txts_begin_cont ++
            if (array_txts_begin_cont >= _txts_legth){
                instance_destroy(obj_botao_game)
                
                state = "pergunta"
                
                txt_current = $"O número é {logic_actual}"
                
                #region Para os 3 botoes das acoes
                //
                buttons_action_margin = 0.85 * sprite_get_width(spr_botao_pequeno)
                
                var _button_action_posx = 215
                var _button_action_posy = 180
                
                var _button_action_scale = 0.75
                
                /// Botao "menor"
                var _inst_button = instance_create_layer(x + _button_action_posx, y + _button_action_posy, layer, obj_botao_game)
                with (_inst_button) {
                    my_text = "menor"
                    
                    text_scale_base *= _button_action_scale
                    
                    image_xscale *= _button_action_scale
                    image_yscale *= _button_action_scale
                	
                    effect_xscale *= _button_action_scale
                    effect_xscale_over *= _button_action_scale
                    effect_xscale_press *= _button_action_scale
                    effect_xscale_released *= _button_action_scale
                    
                    effect_yscale *= _button_action_scale
                    effect_yscale_over *= _button_action_scale
                    effect_yscale_press *= _button_action_scale
                    effect_yscale_released *= _button_action_scale
                }
                
                _inst_button.my_function = function(){
                    with (obj_genio) {
                        reset_effect_text_scale()
                        
                        logic_maximo = logic_actual - 1
                        
                        logic_actual = (logic_maximo + 1 + logic_minimo) / 2
                        logic_actual = floor(logic_actual)
                        
                        
                        txt_current = $"O número é {logic_actual}"
                    }
                }
                
                
                /// Botao "acertou"
                _inst_button = instance_create_layer(x + _button_action_posx + buttons_action_margin, y + _button_action_posy, layer, obj_botao_game)
                with (_inst_button) {
                    my_text = "acertou"
                    
                    text_scale_base *= _button_action_scale
                    
                    image_xscale *= _button_action_scale
                    image_yscale *= _button_action_scale
                	
                    effect_xscale *= _button_action_scale
                    effect_xscale_over *= _button_action_scale
                    effect_xscale_press *= _button_action_scale
                    effect_xscale_released *= _button_action_scale
                    
                    effect_yscale *= _button_action_scale
                    effect_yscale_over *= _button_action_scale
                    effect_yscale_press *= _button_action_scale
                    effect_yscale_released *= _button_action_scale
                }
                
                _inst_button.my_function = function(){
                    with (obj_genio) {
                        // Destruindo os botoes
                        instance_destroy(obj_botao_game)
                        
                        // Texto atual do genio
                        txt_current = "Eba, acertei @v@\nAvançar reinicia o jogo"
                        
                        // Criando o botao para reiniciar o jogo
                        var _inst_button = instance_create_layer(370, 235, "Instances_UI", obj_botao_game)
                        with (_inst_button) {
                        	my_text = "avançar"
                            
                            text_scale_base *= 0.75
                        	
                            effect_xscale_press = 0.8
                            
                            effect_yscale_press = 1.4
                            
                            
                            my_function = function(){
                                room_restart()
                            }
                        }
                    }
                }
                
                
                /// Botao "maior
                _inst_button = instance_create_layer(x + _button_action_posx + buttons_action_margin * 2, y + _button_action_posy, layer, obj_botao_game)
                with (_inst_button) {
                    my_text = "maior"
                    
                    text_scale_base *= _button_action_scale
                    
                    image_xscale *= _button_action_scale
                    image_yscale *= _button_action_scale
                	
                    effect_xscale *= _button_action_scale
                    effect_xscale_over *= _button_action_scale
                    effect_xscale_press *= _button_action_scale
                    effect_xscale_released *= _button_action_scale
                    
                    effect_yscale *= _button_action_scale
                    effect_yscale_over *= _button_action_scale
                    effect_yscale_press *= _button_action_scale
                    effect_yscale_released *= _button_action_scale
                }
                
                _inst_button.my_function = function(){
                    with (obj_genio) {
                        reset_effect_text_scale()
                        
                        logic_minimo = logic_actual + 1
                        
                        logic_actual = (logic_maximo + logic_minimo - 1) / 2
                        logic_actual = ceil(logic_actual)
                        
                        
                        txt_current = $"O número é {logic_actual}"
                    }
                }
                #endregion
            }
            else {
            	txt_current = array_txts_begin[array_txts_begin_cont]
            }
        }
        
    }
}
#endregion