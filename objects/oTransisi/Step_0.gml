if(mode != TRANS_MODE.OFF){
	
	if(mode == TRANS_MODE.INTRO){
		percent = max(0,percent - max((percent/10),0.005));
	}else{
		percent = max(1,percent - max(((1 - percent)/10),0.005));
	}
		
	if(percent == 1 || percent == 0){
		
		if(mode == TRANS_MODE.INTRO){
			mode = TRANS_MODE.OFF
		}
	
		if(mode == TRANS_MODE.NEXT){
			mode = TRANS_MODE.INTRO;
			room_goto_next();
		}
		
		if(mode == TRANS_MODE.GOTO){
			mode = TRANS_MODE.INTRO;
			room_goto(target);
		}
		
		if(mode == TRANS_MODE.RESTART){
			game_restart();
		}

	
	}
}