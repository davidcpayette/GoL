/// @description based on facing (set in oMovingObject) attacks 3 hor spaces in front
/// @param set in oMovingObject
switch(facing)
{
    case "up":
        instance_create(x-32,y-32,oDamage);
        instance_create(x,y-32,oDamage);
        instance_create(x+32,y-32,oDamage);
        break;
    case "down":
        instance_create(x-32,y+32,oDamage);
        instance_create(x,y+32,oDamage);
        instance_create(x+32,y+32,oDamage);
        break;
    case "left":
        instance_create(x-32,y-32,oDamage);
        instance_create(x-32,y,oDamage);
        instance_create(x-32,y+32,oDamage);
        break;
    case "right":
        instance_create(x+32,y-32,oDamage);
        instance_create(x+32,y,oDamage);
        instance_create(x+32,y+32,oDamage);
        break;
}

