
this_sPlayer = asset_get_index(EnemieSpritesDefault[PLAYER_MOVE.STOP]);
this_sPlayerJ = asset_get_index(EnemieSpritesDefault[PLAYER_MOVE.JUMP]);
this_sPlayerR =asset_get_index(EnemieSpritesDefault[PLAYER_MOVE.RUN]);

vsp = vsp + grv;

//Don't walk of edges
if (grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,oWall))
{
	hsp = -hsp;
	
}
  
//Horizontal Collision
if (place_meeting(x+hsp,y,oWall)) {
	while (!place_meeting(x+sign(hsp),y,oWall)) {
			x = x + sign(hsp);
	}
	hsp = -hsp;
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
	grounded = false;
	sprite_index = this_sPlayerJ;
	image_speed = 0;
	if (vsp > 0)
		image_index = 1;
	else 
		image_index = 0;
		
}
else{
	grounded = true;
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

