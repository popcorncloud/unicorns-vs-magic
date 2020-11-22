//Get Player Input
key_left =  keyboard_check(vk_left);
key_right =  keyboard_check(vk_right);
key_jump =  keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up);

this_sPlayer4 = sPlayer4;
this_sPlayer4J = sPlayer4J;
this_sPlayer4R =sPlayer4R; 

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
	sprite_index = this_sPlayer4J;
	image_speed = 0;
	if (vsp > 0)
		image_index = 1;
	else 
		image_index = 0;
		
}
else{
	image_speed = 1;
	if (hsp == 0){
		sprite_index = this_sPlayer4;
	}
	else{
		sprite_index = this_sPlayer4R;
	}
}

if (hsp != 0) 
	image_xscale = sign(hsp);

