draw_set_font(fMenu);

for (var i = 0;i < menu_items;i++){
	var txt = menu[i];
	if(menu_cursor == i){
		txt = string_insert(">",txt,0);
		var col = c_white;
	}else{
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemHeight * (i * 1.5));
	draw_set_color(col);
	draw_text(xx,yy,txt)
}
