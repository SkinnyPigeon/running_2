/// @description Insert description here
// You can write your code in this editor
keyA = keyboard_check( 65 );
keyD = keyboard_check( 68 );

if( keyA ) {
	phy_speed_x = - walk_speed;
};

if( keyD ) {
	phy_speed_x = walk_speed;
};

if( keyD && keyA ) {
	phy_speed_x = 0;
};

if( !keyD && !keyA ) {
	phy_speed_x = 0;
};


keyW = keyboard_check_released( 87 ); 


if( keyW ) {
	//var dir = point_direction( x, y, x + walk_speed, walk_speed );
	physics_apply_impulse( x, y, lengthdir_x( 100, 45 ), lengthdir_y( 100, 45 ));
};