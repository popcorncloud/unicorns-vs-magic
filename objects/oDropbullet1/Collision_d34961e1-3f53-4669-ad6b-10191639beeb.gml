with(other)
{
	hp--;
	flash = 3;
	hitfrom = other.direction;
	HitByID = other.ShotByID;
}
instance_destroy();
