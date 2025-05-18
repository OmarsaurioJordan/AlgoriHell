///s_help();

if !arte {
    with o_boton {
        if tipo == m_bot_ver {
            if !esgris {
                with o_boton {
                    if tipo != m_bot_ver {
                        visible = false;
                    }
                }
            }
            else {
                with o_boton {
                    if tipo <= 23 {
                        visible = true;
                    }
                }
            }
            break;
        }
    }
}

