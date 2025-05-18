///s_cercanos(x, y, radio, objeto);
// ret: array de ids o noone

var res = noone;
with argument3 {
    if point_distance(argument0, argument1, x, y) < argument2 {
        if is_array(res) {
            res[array_length_1d(res)] = id;
        }
        else {
            res[0] = id;
        }
    }
}
return res;

