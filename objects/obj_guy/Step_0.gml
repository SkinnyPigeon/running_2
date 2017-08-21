/// @description Movement

script_execute( scr_animate );

if( spd < 0 ){
  spd = 0;
};

if( spd > 0 ){
  spd -= 1;
};

if( spd > 100 ){
  spd -= 1.1
};

//A Button

if( gamepad_button_check_pressed( 0, gp_face1 )){
  aButtonPressed = 1;
};

if( gamepad_button_check_released( 0, gp_face1 )){
  aButtonReleased = 1;
};

if(( aButtonPressed == 1 && aButtonReleased == 1 ) && spd <= 300 ){
  spd += 8.5;
  aButtonPressed = 0;
  aButtonReleased = 0;
};

//B Button

if( gamepad_button_check_pressed( 0, gp_face2 )){
  bButtonPressed = 1;
};

if( gamepad_button_check_released( 0, gp_face2 )){
  bButtonReleased = 1;
};

if(( aButtonPressed == 1 && aButtonReleased == 1 ) && spd <= 300 ){
  spd += 8.5;
  bButtonPressed = 0;
  bButtonReleased = 0;
};

phy_speed_x = spd;

//X Button

if( gamepad_button_check_pressed( 0, gp_face3 )){
  xButtonPressed = 1;
  jumpSpeed = spd;
};

if( gamepad_button_check_released( 0, gp_face3 )){
  xButtonReleased = 1;
};

if( xButtonPressed ==1 && xButtonReleased == 1 ) {
	physics_apply_impulse( x, y, lengthdir_x( jumpSpeed, 45 ), lengthdir_y( jumpSpeed * 10, 45 ));
	xButtonPressed = 0;
	xButtonPressed = 0;
};

if( !place_meeting( x, y + 1, obj_ground )) {
	phy_speed_x = jumpSpeed;
};










