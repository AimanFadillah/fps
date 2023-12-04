key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

if(place_meeting(x,y + 2,oTembok) && key_jump){
	vsp = -10
}
	

if(place_meeting(x + hsp,y,oTembok)){	
	if(!place_meeting(x + sign(hsp),y,oTembok)){
		x = x + sign(hsp)
	}
	hsp = 0;
}

x = x + hsp;


if(place_meeting(x,y + vsp,oTembok)){	
	if(!place_meeting(x,y + sign(vsp),oTembok)){
		y = y + sign(vsp)
	}
	vsp = 0;
}

y = y + vsp;


if(vsp < 0){
	sprite_index = sOrangA;
}else if(hsp != 0 && vsp == 0){
	sprite_index = sOrangR
}else sprite_index = sOrang

if(hsp != 0) image_xscale = sign(hsp) == 1 ? sign(hsp) + 2 : sign(hsp) - 2;