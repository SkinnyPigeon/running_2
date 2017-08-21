///scr_animate

//Animate
if( obj_guy.spd != 0 ) {
  image_speed = 3;
} else {
  image_speed = 0;
  image_index = 0;
};

//Flip Sprite
if( hspeed < 0 ) {
  image_xscale = -1;
};

if( hspeed > 0 ) {
  image_xscale = 1;
};

//Set Depth
depth = -y;