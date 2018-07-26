/// @description drops mines behind, based on facing

switch(facing)
{
    case "up":
        instance_create(x,y+32,oMine);
        break;
    case "down":
        instance_create(x,y-32,oMine);
        break;
    case "left":
        instance_create(x+32,y,oMine);
        break;
    case "right":
        instance_create(x-32,y,oMine);
        break;
}

