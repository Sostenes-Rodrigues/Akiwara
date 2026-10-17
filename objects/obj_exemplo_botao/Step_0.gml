/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var _mouse_click = mouse_check_button_pressed(mb_left);



if (_mouse_sobre)
{
    tween(id, "image_xscale", xscale * 1.1, tween_animation.elastic_out, 60, , 0);
    tween(id, "image_yscale", yscale * 1.1, tween_animation.elastic_out, 60, , 0);
    tween(id, "escala_txt", 1.1, tween_animation.elastic_out, 60, , 0);
    tween(id, "val_cor", 1, tween_animation.elastic_out, 60);
    //tween(id, "image_angle", 5, tween_animation.bounce, 10, false, , 0);
    
    if (_mouse_click)
    {
        tween(id, "image_xscale", xscale * 2, tween_animation.back, 5);
        tween(id, "image_yscale", yscale * 1.6, tween_animation.back, 5);
        tween(id, "escala_txt", 3, tween_animation.back, 5);
        //tween(id, "image_angle", -5, tween_animation.bounce, 10, false, , true);    
        tween(id, "image_angle", 10, tween_animation.elastic_slow, 30, , , 1);
        minha_funcao();
    }
}
else
{
    tween(id, "image_xscale", xscale, tween_animation.back, 20);
    tween(id, "image_yscale", yscale, tween_animation.back, 20);
    tween(id, "escala_txt", 1, tween_animation.back, 20);
    tween(id, "val_cor", 0, tween_animation.back, 20);
    tween(id, "image_angle", 0, tween_animation.bounce, 10);
}

image_blend = merge_colour(cor1, cor2, val_cor);