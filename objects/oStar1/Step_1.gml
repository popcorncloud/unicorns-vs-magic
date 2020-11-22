

if (oPlayer.image_xscale < 0)
{
	x = oPlayer.x -26;
	y = oPlayer.y -25;
}
else
{
	x = oPlayer.x +26;
	y = oPlayer.y -25;
}

firingdelay = firingdelay - 1;

if keyboard_check(vk_control)&& (firingdelay <0)
{
	firingdelay = 5;
	with (instance_create_layer(x,y,"Starbullets",oStarbullet1))
	{
		speed = 25;
		if (oPlayer.image_xscale < 0)                                             
			direction = 180;
		else
			direction = 0;
	}
}
