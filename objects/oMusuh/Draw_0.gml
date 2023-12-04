draw_self();
if(flash > 0){
	flash--;
	shader_set(sWhite);
	draw_self();
	shader_reset();
}