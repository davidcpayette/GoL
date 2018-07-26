var w = 1; 
draw_set_colour(c_black);
for(var i = 16; i < room_width; i += 32)
{
    draw_line_width(i,0,i,room_height,w);
}
for(var i = 16; i < room_height; i += 32)
{
    draw_line_width(0,i,room_width,i,w);
}

