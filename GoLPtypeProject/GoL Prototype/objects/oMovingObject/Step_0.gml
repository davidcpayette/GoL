facing = string("right");
if(image_angle > 360){image_angle -= 360;}
if(image_angle < 0){image_angle += 360;}
switch(image_angle)
{
    case 0: 
        facing = "right"; 
        break;
    case 90:
        facing = "up";
        break;
    case 180:
        facing = "left";
        break;
    case 270:
        facing = "down";
        break;
}

