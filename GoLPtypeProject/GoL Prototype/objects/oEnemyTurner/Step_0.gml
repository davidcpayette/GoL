event_inherited();
control = instance_nearest(x,y,oPlayerControl);
if(control.tick){
   switch(behavior){//tick:move,move,attack,turn
        case 1: 
            move();
            break;
        case 2:
            move();
            attack_warning();
            break;
        case 3: 
            attack_front();
            break;
        case 4:
            turn_left();
            break;
    }
    behavior++;
    if(behavior > beh_max){behavior -= beh_max;}
}
health_control();

