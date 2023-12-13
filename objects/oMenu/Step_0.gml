menu_x += ((menu_x_target - menu_x) / menu_speed ) - 8;

if(menu_control){
	if(keyboard_check_pressed(vk_up)){
		menu_cursor++;
		if(menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if(keyboard_check_pressed(vk_down)){
		menu_cursor--;
		if(menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if(keyboard_check_pressed(vk_enter)){
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		ScreenShake(4,10);
		menu_control = false;
		
		if(menu_committed == 2){
			return room_goto(rOne);
		}
		
		if(menu_committed == 1){
			if(file_exists(SAVEFILE)){
				var _file = file_text_open_read(SAVEFILE);
				var _target = file_text_read_real(_file);
				file_text_close(_file);
				room_goto(_target);
			}else{
				room_goto_next();
			};
		}
	
		if(menu_committed == 0){
			return game_end();
		}
	}
}




