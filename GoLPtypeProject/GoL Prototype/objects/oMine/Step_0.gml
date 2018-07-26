if(oPlayerControl.tick)
{
    turns--;
}
if(turns == 1)
{
    image_speed = 0.5;
}
if(turns == 0)
{
    mine_explode();
    instance_destroy();
}

