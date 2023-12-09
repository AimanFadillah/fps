if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x,view_w_half - 200,room_width - view_w_half - 200);
y = clamp(y,view_h_half,room_height - view_h_half);

x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain - ((1/shake_length) * shake_strong));
	
camera_set_view_pos(cam,x - view_h_half,y - view_h_half);

if(layer_exists("kota1")){
	layer_x("kota1",x/2);
}

if(layer_exists("kota2")){
	layer_x("kota2",x/4);
}




