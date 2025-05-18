///s_numero(str);
// ret: str vacio si no es numero, str con numero si si es

var num = "";
for (var c = 1; c <= string_length(argument0); c++) {
    if string_count(string_char_at(argument0, c), m_mask_num) == 1 {
        num += string_char_at(argument0, c);
    }
}
var pp = string_count(".", num);
if pp > 1 {
    num = "";
}
else if pp == 1 {
    if string_char_at(num, 1) == "." {
        num = "";
    }
    else if string_char_at(num, string_length(num)) == "." {
        num = "";
    }
}
return num;

