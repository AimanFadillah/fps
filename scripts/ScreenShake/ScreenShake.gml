function ScreenShake(kekuatan,time){
	with(oKamera){
		if(kekuatan > shake_remain){
			shake_remain = kekuatan;
			shake_strong = kekuatan;
			shake_length = time;
		}
	}	
}