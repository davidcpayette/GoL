tick = false; //Initialize, to be sure tick doesn't happen more than one frame

//press up/down to make tick rate increase/decrease
if(keyboard_check_pressed(vk_up))// && play == 0)
{
    if(num_frames > 10){num_frames -= 10;}
} 
if(keyboard_check_pressed(vk_down))// && play == 0)
{
    if(num_frames < 30){num_frames += 10;}
}

//space bar to play, ticks at set intervals
if(keyboard_check_pressed(vk_space))
{
    if(play == 0) //if pressing space and not playing, play
    {
        play = 1;
        play_hit = true;
    }
    else if(play > 0) //if pressing space and playing, pause
    {
        play = 0;
        tick = false;
    }   
}

if(play > 1) //if playing, don't tick until... 
{
    tick = false;
    if(play >= num_frames){play = 0;}
    play ++;
}

if(play == 1) //... play is 1
{
    play ++;
    tick = true;
}

//right arrow to step 1 frame at a time
if(keyboard_check_pressed(vk_right) && play == 0)
{
    tick = true;   
    //stepped = true; 
    play_hit = true;
    //alarm[1] = 1;
}

//tab through objects to place in level
if(keyboard_check_pressed(vk_tab))
{   
    if(selector < array_length_1d(object_list)-1)
    {
        selector++;
    }
    else
    {
        selector = 0;
    }
}

//place objects in level, only works for holes right now
if(mouse_check_button_pressed(mb_left) && 
    position_meeting(mouse_x,mouse_y,oPlacementAllow) && 
    play_hit = false && 
    object_num[selector]>0)
{
    if(object_list[selector] != noone)
    {
        string_to_object(object_list[selector]); 
    }
    if(obj != noone)
    { 
        spot = instance_position(mouse_x, mouse_y, oPlacementAllow);
        inst = instance_create(spot.x, spot.y,obj);
        instance_create(spot.x, spot.y, oPlacementUsed);
        with(spot){instance_destroy();}
        undo[inst.x,inst.y] = selector;
        ds_list_add(undolist,inst);
        object_num[selector]--;
    }
}

//undo object placement
if(mouse_check_button_pressed(mb_right) && ds_list_size(undolist)!=0 && !play_hit)
{
    inst = ds_list_find_value(undolist,ds_list_size(undolist)-1);
    object_num[undo[inst.x,inst.y]]++;
    if(position_meeting(inst.x,inst.y,oPlacementUsed))
    {
        instance_create(inst.x,inst.y,oPlacementAllow);
        clearspot = instance_position(inst.x,inst.y,oPlacementUsed);
        with(clearspot){instance_destroy();}
    }
    with(inst){instance_destroy();}
    ds_list_delete(undolist,ds_list_size(undolist)-1);
}

//advances subimage of the clock sprite
if(tick)
{    
    if(ticktock < sprite_get_number(sTickClock) - 2)
    {
        ticktock++;
    }
    else
    {
        ticktock = 0;
    }
}
if(play == 0)
{
    ticktock = 4;
}

//switches subimage of play/pause sprite
playsprite = num_frames/10 - 1;   


//restart level with "r"
if(keyboard_check_pressed(ord("R"))){room_restart();}

//restart game with "esc"
if(keyboard_check_pressed(vk_escape)){game_restart();}

//level change
if(((play_hit && !instance_exists(oMovingObject)) || keyboard_check_pressed(vk_rshift)) && room != room_last){room_goto_next();}


