/// @desc Create Wall

myannoyng_walls = instance_create_layer(x,y,layer,oWall)
with (myannoyng_walls)
{
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_height;
}
