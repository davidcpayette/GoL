if(place_meeting(x,y,oMovingObject))
{
    inst = instance_place(x,y,oMovingObject);
    if(inst != noone)
    {
        with(inst){instance_destroy();}
    }
}