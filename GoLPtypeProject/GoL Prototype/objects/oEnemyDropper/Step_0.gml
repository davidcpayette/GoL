event_inherited();
control = instance_nearest(x,y,oPlayerControl);
if(control.tick){
   switch(behavior){ //tick:move,move,mine
        case 1: 
        case 2:
            move();
            break;
        case 3: 
            move();
            mine_drop();
            break;
    }
    behavior++;
    if(behavior > 3){behavior -= 3;}
}
health_control();

