///s_cambios(id);

with argument0 {
    edicion = string_lower(edicion);
    var res = s_split(edicion, "|", true);
    if !is_array(res) {
        audio_play_sound(a_no, 100, false);
        exit;
    }
    if tipo == m_input_pid {
        if array_length_1d(res) == 5 {
            for (var g = 0; g < 5; g++) {
                if g == 0 {
                    res[g] = string_replace(res[g], "m", string(m_almas_max));
                }
                else {
                    res[g] = string_replace(res[g], "m", "1");
                }
                res[g] = string_replace(res[g], "z", "0");
                res[g] = string_replace(res[g], "t", "1");
                res[g] = string_replace(res[g], "f", "0");
                if s_numero(res[g]) == "" {
                    audio_play_sound(a_no, 100, false);
                    exit;
                }
            }
            with o_control {
                referencia = clamp(round(real(s_numero(res[0]))), 1, m_almas_max);
                for (var c = 0; c < 3; c++) {
                    pid[c] = clamp(real(s_numero(res[c + 1])), 0, 1);
                }
                if res[4] != "0" {
                    for (var i = m_pid_long - 1; i >= 0; i--) {
                        error[i] = 0;
                    }
                    for (var i = m_pid_historial - 1; i >= 0; i--) {
                        historial[i] = 0;
                    }
                }
            }
        }
        else if array_length_1d(res) == 1 {
            res[0] = string_replace(res[0], "m", string(m_almas_max));
            res[0] = string_replace(res[0], "z", "0");
            res[0] = string_replace(res[0], "t", "1");
            res[0] = string_replace(res[0], "f", "0");
            if s_numero(res[0]) == "" {
                audio_play_sound(a_no, 100, false);
                exit;
            }
            with o_control {
                referencia = clamp(round(real(s_numero(res[0]))), 1, m_almas_max);
            }
        }
    }
    else {
        if array_length_1d(res) == m_gen_total {
            for (var g = 0; g < m_gen_total; g++) {
                res[g] = string_replace(res[g], "h", "1");
                res[g] = string_replace(res[g], "l", "0");
                res[g] = string_replace(res[g], "m", "0.5");
                res[g] = string_replace(res[g], "r", "1.5");
                res[g] = string_replace(res[g], "s", "2");
                if s_numero(res[g]) == "" {
                    audio_play_sound(a_no, 100, false);
                    exit;
                }
            }
            with o_alma {
                for (var g = 0; g < m_gen_total; g++) {
                    if res[g] == "1.5" {
                        adn[g] = random(1);
                    }
                    else if res[g] != "2" {
                        adn[g] = clamp(real(s_numero(res[g])), 0, 1);
                    }
                }
            }
        }
    }
}
audio_play_sound(a_ok, 100, false);

