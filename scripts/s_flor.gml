///s_flor(division);

// verificar si las flores estan quietas
with o_flor {
    if division == argument0 {
        if x != xprevious or y != yprevious {
            exit;
        }
    }
}
// encontrar la flor ganadora
var flou = ds_priority_create();
with o_flor {
    if division == argument0 {
        ds_priority_add(flou, id,
            s_conteo(x, y, m_flor_vision * power(2, division), 0));
    }
}
var find = noone;
var fnum;
while !ds_priority_empty(flou) {
    find = ds_priority_find_min(flou);
    fnum = ds_priority_find_priority(flou, find);
    if fnum != 0 {
        break;
    }
    else {
        ds_priority_delete_value(flou, find);
    }
}
ds_priority_destroy(flou);
if find != noone {
    // la flor ganadora debe reproducirse
    if argument0 > 0 {
        with find {
            var aux;
            repeat 4 {
                aux = instance_create(x + random_range(-8, 8),
                    y + random_range(-8, 8), o_flor);
                aux.division = division - 1;
            }
        }
    }
    // la flor ganadora debe advertir a lujuria
    else if fnum == 1 {
        var aux = instance_nearest(find.x, find.y, o_alma);
        aux.culpa = m_culpa_lujuria;
        aux.chilla = random(m_delay_voz / 2);
        if s_solo(m_culpa_lujuria) and instance_number(o_alma) > 40 {
            if random(1) < 0.5 {
                with aux {
                    instance_destroy();
                }
            }
        }
        s_voz(o_lujuria.x, o_lujuria.y, m_culpa_lujuria, true);
        o_lujuria.lover = aux;
    }
}
// eliminar las flores
with o_flor {
    if division == argument0 {
        instance_destroy();
    }
}

