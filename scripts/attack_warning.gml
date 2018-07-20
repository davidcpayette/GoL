///based on facing (set in oMovingObject) displays sHitWarning

switch(facing)
{
    case "up":
        instance_create(x-32,y-32,oHitWarning);
        instance_create(x,y-32,oHitWarning);
        instance_create(x+32,y-32,oHitWarning);
        break;
    case "down":
        instance_create(x-32,y+32,oHitWarning);
        instance_create(x,y+32,oHitWarning);
        instance_create(x+32,y+32,oHitWarning);
        break;
    case "left":
        instance_create(x-32,y-32,oHitWarning);
        instance_create(x-32,y,oHitWarning);
        instance_create(x-32,y+32,oHitWarning);
        break;
    case "right":
        instance_create(x+32,y-32,oHitWarning);
        instance_create(x+32,y,oHitWarning);
        instance_create(x+32,y+32,oHitWarning);
        break;
}

