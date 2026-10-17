// Se o mouse passou por mim
if position_meeting(mouse_x, mouse_y, id){
    // Efeito de quando o mouse passar por mim
    tween(id, "effect_xscale", effect_xscale_over, tween_animation.bounce, effect_over_time, , false, false)
    tween(id, "effect_yscale", effect_yscale_over, tween_animation.bounce, effect_over_time, , false, false)
    
    // Se clikei
    if mouse_check_button_pressed(mb_left){
        //
        audio_play_sound(snd_mouse, 5, false)
        
        // Rodando minha funcao de prescionar
        my_function()
        
        // Efeito de quando o mouse clicar em mim
        tween(id, "effect_xscale", effect_xscale_press, tween_animation.bounce, effect_press_time, , true, true)
        tween(id, "effect_yscale", effect_yscale_press, tween_animation.bounce, effect_press_time, , true, true)
    }
}
// Se o mouse nao esta em cima de mim
else {
	// Efeito de quando o mouse passar por mim
    tween(id, "effect_xscale", effect_xscale_released, tween_animation.bounce, effect_over_time, , false, false)
    tween(id, "effect_yscale", effect_yscale_released, tween_animation.bounce, effect_over_time, , false, false)
}