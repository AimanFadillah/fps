
vsp = vsp + grv;

if(place_meeting(x + hsp,y,oTembok)){	
	if(!place_meeting(x + sign(hsp),y,oTembok)){
		x = x + sign(hsp)
	}
	hsp = -hsp;
}

x = x + hsp;


if(place_meeting(x,y + vsp,oTembok)){	
	if(!place_meeting(x,y + sign(vsp),oTembok)){
		y = y + sign(vsp)
	}
	vsp = 0;
}

y = y + vsp;


if(hsp != 0 && vsp == 0){
	sprite_index = sMusuhR
}else sprite_index = sMusuh

if(hsp != 0) image_xscale = sign(hsp) == 1 ? sign(hsp) + 2 : sign(hsp) - 2;