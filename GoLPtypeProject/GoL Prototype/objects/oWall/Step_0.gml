if(place_meeting(x,y,oDamage) && !iframe)
{
    hp--; 
    image_index = image_number-hp;
    iframe = true;
}
if(!place_meeting(x,y,oDamage))
{
    iframe = false;
}
if(hp == 0)
{
    instance_destroy();
}

