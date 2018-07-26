spr = noone;
draw_set_colour(c_navy);
draw_rectangle(640-112,0,640,480,false);
draw_set_colour(c_ltgray);
draw_rectangle(640-100,12,628,468,false);
draw_set_colour(c_black);

draw_sprite(sTickClock,ticktock,guivalign,32);
if(room != level0)
{    
    for(var i = 0; i < array_length_1d(object_list); i++)
    {
        string_to_sprite(object_list[i]);
        draw_sprite(spr,0,guivalign,96+36*i);
    }
    for(var j = 0; j < array_length_1d(object_num); j++)
    {
        draw_text(guivalign - 40,96 + 36*j,string_hash_to_newline(string(object_num[j])));
    }
    if(!play_hit){draw_sprite(sSelector,0,guivalign + 32,96+36*selector);}
    if(play_hit){draw_sprite(sLock,0,guivalign + 32,32);}
}
draw_sprite(sPlayPause,playsprite,guivalign - 32, 32);




