if(hp <= 0){
	with(instance_create_layer(x,y,"dead",oMusuhD)){
		image_xscale = 3.0;
		image_yscale = 3.0;
		direction = other.hitfrom;
		hsp = sign(other.hsp) == 1 ? lengthdir_x(3,direction) : lengthdir_x(-3,direction);
		vsp = lengthdir_y(3,direction) - 5;
		if(sign(hsp) != 0) image_xscale = sign(hsp) == 1 ? sign(hsp) + 2 : sign(hsp) - 2;
	}
	instance_destroy();
}