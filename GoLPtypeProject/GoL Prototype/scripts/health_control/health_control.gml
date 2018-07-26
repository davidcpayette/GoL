if(place_meeting(x,y,oDamage))
{
    hp--;
}
if(hp == 0)
{
    instance_destroy();
}
