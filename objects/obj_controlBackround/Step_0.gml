var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);

if global.Dead == false
{
    layer_background_sprite(back_id, spr_checker);
}
else
{
    layer_background_sprite(back_id, spr_checkerDead);
}

