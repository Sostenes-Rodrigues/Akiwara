// Inherit the parent event
event_inherited();


if !audio_is_playing(snd_music){
    audio_stop_all()
    
    audio_play_sound(snd_music, 0, true)
}

image_xscale = 0.9
image_yscale = 0.9

effect_xscale = 0.9
effect_yscale = 0.9

effect_xscale_released *= 0.9
effect_yscale_released *= 0.9

effect_xscale_over = 1.2
effect_yscale_over = 1.13

effect_xscale_press = 1.4
effect_yscale_press = 1.4


/// Posicao de criacao do genio
genio_posx = 32
genio_posy = -5


// Para inicioar o jogar
my_function = function(){
    // Destruindo todas as instancias, incluindo o proprio botao
    instance_destroy(all)
    
    // Criando o genio
    instance_create_layer(genio_posx, genio_posy, "Instances", obj_genio)
}