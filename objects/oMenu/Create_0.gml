#macro SAVEFILE "Save.sav"

gui_width = 1300;
gui_height = display_get_gui_height() - 80;
gui_margin = 32;

menu_x = gui_width;// + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25;
menu_font = fMenu;
menu_itemHeight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[2] = "New Game"
menu[1] = "Continue"
menu[0] = "Quit"

menu_items = array_length(menu);
menu_cursor = 2;




