if(hp <= 0){
	with(instance_create_layer(x,y,"dead",oMusuhD)){
		image_xscale = 3.0;
		image_yscale = 3.0;
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction) - 5;
		if(sign(other.hsp) != 0) image_xscale = sign(other.hsp) == 1 ? 3 : -3;
	}
	instance_destroy();
}