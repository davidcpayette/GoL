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

//paused clock sprite
if(play == 0)
{
    ticktock = 4;
}