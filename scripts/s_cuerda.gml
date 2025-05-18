///s_cuerda(xi, yi, xf, yf);

// obtener datos
var dd = point_direction(argument0, argument1, argument2, argument3);
var xi = argument0 + lengthdir_x(48, dd);
var yi = argument1 + lengthdir_y(48, dd);
var xf = argument2 + lengthdir_x(32, -dd);
var yf = argument3 + lengthdir_y(32, -dd);
var pp = point_distance(xi, yi, xf, yf);
// procesar datos
var tot = floor(pp / 22);
if tot > 0 {
    var paso = pp / tot;
    var cue;
    for (var p = 0; p < pp - paso - 11; p += paso) {
        // obtener una cuerda
        cue = noone;
        with o_cuerda {
            if !active {
                cue = id;
                break;
            }
        }
        if cue == noone {
            cue = instance_create(0, 0, o_cuerda);
        }
        // posicionar la cuerda
        cue.active = true;
        cue.x = xi + lengthdir_x(p, dd);
        cue.y = yi + lengthdir_y(p, dd);
        cue.depth = -cue.y;
        cue.direction = dd;
    }
}

