///s_crea_almas(num);
// num: 0:azar_mundo, -1:todas_mundo, num:num_puerta

with o_alma {
    instance_destroy();
}
with o_cadaver {
    instance_destroy();
}
var aux;
if argument0 == 0 {
    repeat irandom(o_control.referencia) {
        instance_create(random(room_width),
            random(room_height), o_alma);
    }
}
else if argument0 == -1 {
    repeat o_control.referencia {
        instance_create(random(room_width),
            random(room_height), o_alma);
    }
}
else {
    repeat argument0 {
        aux = instance_find(o_puerta, irandom(3));
        instance_create(aux.x + random_range(-32, 32),
            aux.y + random_range(-32, 32), o_alma);
    }
}

