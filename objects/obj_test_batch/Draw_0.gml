var _i = 0;
repeat(array_length(pos)) {
	draw_image(pos[_i].image, 0, pos[_i].x, pos[_i].y);
	++_i;
}