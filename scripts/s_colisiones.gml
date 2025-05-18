///s_colisiones(id);
// ret: true si puede ejecutar IA

var res = false;
with argument0 {
    // colision con objetos solidos
    var otr = instance_place(x, y, o_bloque);
    if otr != noone {
        var d = point_direction(otr.x, otr.y, x, y);
        var v = m_velocidad * dlt;
        x += lengthdir_x(v, d);
        y += lengthdir_y(v, d);
        direction += random_range(-m_corrige_dir, m_corrige_dir);
    }
    else {
        // colision con otros personajes
        otr = instance_place(x, y, o_movil);
        if otr != noone {
            var d = point_direction(otr.x, otr.y, x, y);
            var v1 = m_velocidad * dlt;
            var v2;
            if object_index == o_alma {
                if otr.object_index == o_alma {
                    v1 /= 2;
                    v2 = v1;
                }
                else {
                    v2 = v1 * 0.2;
                    v1 -= v2;
                }
            }
            else {
                if otr.object_index == o_alma {
                    v2 = v1 * 0.8;
                    v1 -= v2;
                }
                else {
                    v1 /= 2;
                    v2 = v1;
                }
            }
            x += lengthdir_x(v1, d);
            y += lengthdir_y(v1, d);
            otr.x += lengthdir_x(v2, -d);
            otr.y += lengthdir_y(v2, -d);
            s_limites(otr);
            direction += random_range(-m_corrige_dir, m_corrige_dir);
        }
        // IA
        else {
            res = true;
        }
    }
}
return res;

