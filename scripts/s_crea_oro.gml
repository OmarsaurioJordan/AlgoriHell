///s_crea_oro(total_deseado);

var xx, yy, xi, yi, m, d;
while instance_number(o_oro) < argument0 {
    xx = random(room_width);
    yy = random(room_height);
    m = irandom_range(1, 10);
    d = random_range(100, 600);
    while instance_number(o_oro) < argument0 and m > 0 {
        m--;
        do {
            xi = xx + random_range(-d, d);
            yi = yy + random_range(-d, d);
        }
        until point_distance(xx, yy, xi, yi) < d;
        instance_create(xi, yi, o_oro);
    }
}

