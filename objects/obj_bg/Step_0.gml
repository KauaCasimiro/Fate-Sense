var dt = delta_time / 1000000;

bg_time += dt;

var layer_id = layer_get_id("Background");

var xx = sin(bg_time * 0.5) * 20;
var yy = cos(bg_time * 0.4) * 10;

layer_x(layer_id, xx);
layer_y(layer_id, yy);