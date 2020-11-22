x = oPlayer2.x+26;
y = oPlayer2.y-25;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);
if (keyboard_check(vk_shift)) && (firingdelay <0)
{
	recoil = 4;
	firingdelay = 5;
	with (instance_create_layer(x,y,"Treebullets",oTreebullet1))
	{
		speed = 25;
		if (oPlayer2.image_xscale < 0)
			direction = 180;
		else
			direction = 0;
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}