///s_draw_input();

with o_input {
    var esc = view_wview[0] / m_width_libro;
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    var xx = view_xview[0] + view_wview[0] / 2;
    var yy = view_yview[0] + view_hview[0] / 2;
    draw_sprite_ext(d_cartel, 1, xx, yy, esc * 1.2, esc * 1.2, 0, c_white, 1);
    var t = " ";
    if titila < 0.2 {
        t = "|";
    }
    var txt;
    if tipo == m_input_pid {
        txt = "Generation Control / Control de Generación" +
            "#with this you can change the King PID" +
            "#use Enter to accept changes, Escape to exit" +
            "#........................" +
            "#Parameters: Reference|P|I|D|restart" +
            "#M:max, Z:zero, decimal, T:true, F:false";
        with o_control {
            txt += "#current: " + string(referencia);
            for (var i = 0; i < 3; i++) {
                txt += "|" + string(pid[i]);
            }
        }
        txt += "|F#example: " + string(m_almas_max) + "|0.2|0.1|0.05|T" +
            "#........................" +
            "#edit: " + edicion + t;
    }
    else {
        txt = "Souls Behaviour / Comportamiento de Almas" +
            "#with this you can change all the Souls genome" +
            "#use Enter to accept changes, Escape to exit" +
            "#........................" +
            "#DNA: Social|Cycle|Mobile|Quiet" +
            "#H:high, L:low, M:middle, R:random, S:same" +
            "#current mean: ";
        var ggg;
        var ttt = 0;
        for (var g = 0; g < m_gen_total; g++) {
            ggg[g] = 0;
        }
        with o_alma {
            ttt++;
            for (var g = 0; g < m_gen_total; g++) {
                ggg[g] += adn[g];
            }
        }
        if ttt != 0 {
            for (var g = 0; g < m_gen_total; g++) {
                ggg[g] /= ttt;
            }
        }
        for (var g = 0; g < m_gen_total; g++) {
            txt += string(ggg[g]) + "|";
        }
        txt = string_copy(txt, 1, string_length(txt) - 1);
        txt += "#example: H|R|S|S" +
            "#........................" +
            "#edit: " + edicion + t;
    }
    draw_text_ext_transformed_colour(xx, yy, txt,
        -1, 265 * esc * 1.2, esc, esc, 0, c_black, c_black, c_black, c_black, 1);
}

