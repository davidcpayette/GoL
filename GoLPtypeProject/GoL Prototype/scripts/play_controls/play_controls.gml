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
    play_hit = true;
}