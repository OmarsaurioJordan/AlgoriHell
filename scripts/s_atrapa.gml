///s_atrapa(x, y, radio);
// ret: array con ids

var res = ds_list_create();
with o_alma {
    if point_distance(x, y, argument0, argument1) < argument2 {
        ds_list_add(res, id);
    }
}
return res;

