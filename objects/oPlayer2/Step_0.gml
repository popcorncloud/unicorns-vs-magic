//Get Player Input
if (hascontrol)
{
	key_left =  keyboard_check(ord("A"));
	key_right =  keyboard_check(ord("D"));
	key_jump =  keyboard_check_pressed(ord("W"));
}
else
{
	key_left =  0;
	key_right = 0;
	key_jump =  0;
}

switch(room)
{
	case room01:
	{
		this_sPlayer = sPlayer4;
		this_sPlayerJ = sPlayer4J;
		this_sPlayerR =sPlayer4R; 		
		break;
	}
	
	default:
	{
		this_sPlayer = sPlayer2;
		this_sPlayerJ = sPlayer2J;
		this_sPlayerR =sPlayer2R; 
	}
}


//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump) {
	vsp = jumpsp;
}
 
//Horizontal Collision
if (place_meeting(x+hsp,y,oWall)) {
	while (!place_meeting(x+sign(hsp),y,oWall)) {
			x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oWall)) {
	while (!place_meeting(x,y+sign(vsp),oWall)) {
			y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1, oWall)) {
	sprite_index = this_sPlayerJ;
	image_speed = 0;
	if (vsp > 0)
		image_index = 1;
	else 
		image_index = 0;
		
}
else{
	image_speed = 1;
	if (hsp == 0){
		sprite_index = this_sPlayer;
	}
	else{
		sprite_index = this_sPlayerR;
	}
}

if (hsp != 0) 
	image_xscale = sign(hsp);

