//Get Player Input
if (hascontrol)
{
	key_left =  keyboard_check(vk_left);
	key_right =  keyboard_check(vk_right);
	key_jump =  keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up);
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
		this_sPlayer = sPlayer3;
		this_sPlayerJ = sPlayer3J;
		this_sPlayerR =sPlayer3R; 		
		break;
	}
	case room011:
	{
		this_sPlayer = sPlayer5;
		this_sPlayerJ = sPlayer5J;
		this_sPlayerR =sPlayer5R; 		
		break;
	}
	case room0111:
	{
		this_sPlayer = sPlayer7;
		this_sPlayerJ = sPlayerJ7;
		this_sPlayerR =sPlayerR7; 		
		break;
	}
	
	default:
	{
		this_sPlayer = sPlayer;
		this_sPlayerJ = sPlayerJ;
		this_sPlayerR =sPlayerR; 
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

