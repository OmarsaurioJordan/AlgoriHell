///s_conteo(x, y, radio, fitness_influence);
// ret: valor

// menor coeficiente m_fitness mayor alcance
var res = 0;
if argument2 == 0 {
    with o_alma {
        res += exp(-m_fitness * point_distance(x, y, argument0, argument1));
    }
    res *= argument3;
}
else if argument3 == 0 {
    with o_alma {
        if point_distance(x, y, argument0, argument1) < argument2 {
            res++;
        }
    }
}
else {
    var k;
    with o_alma {
        k = point_distance(x, y, argument0, argument1);
        if k < argument2 {
            res++;
        }
        res += exp(-m_fitness * k) * argument3;
    }
}
return res;

