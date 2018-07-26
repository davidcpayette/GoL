/// @description based on facing (set in oMovingObject) and movedist (num of tiles)
/// @param set in oMovingObject

switch(facing)
{
    case "up":
        xdir = 0;
        ydir = -1;
        break;
    case "down":
        xdir = 0;
        ydir = 1;
        break;
    case "left":
        xdir = -1;
        ydir = 0;
        break;
    case "right":
        xdir = 1;
        ydir = 0;
        break;
}

if(!place_meeting(x+xdir*movedist,y,oObstacle))
{
    x+=xdir*movedist;
    move_snap(32,32);
}
if(!place_meeting(x,y+ydir*movedist,oObstacle))
{
    y+=ydir*movedist;
    move_snap(32,32);
}
