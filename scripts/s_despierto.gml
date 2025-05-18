///s_despierto(is_cambio, object);
// arg0: true si cambiar estado de despierto en object
// ret: bool estado despierto de object

with argument1 {
    if argument0 {
        despierto = !despierto;
        var d = despierto;
        var t, m;
        if keyboard_check(vk_shift) {
            with o_monster {
                if id != argument1.id {
                    despierto = !d;
                    t = culpa + 2;
                    m = id;
                    with o_boton {
                        if tipo == t {
                            esgris = !m.despierto;
                            break;
                        }
                    }
                }
            }
        }
    }
    return despierto;
}

