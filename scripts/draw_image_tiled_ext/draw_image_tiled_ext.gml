/// @func draw_image_tiled_ext(sprite_index/image, image_index, x, y, xscale, yscale, col, alpha);
/// @param {Any} sprite_index/image
/// @param {Real} image_index
/// @param {Real} x
/// @param {Real} y
/// @param {Real} xscale
/// @param {Real} yscale
/// @param {Real} col
/// @param {Real} alpha
/* Feather ignore once GM1042 */
function draw_image_tiled_ext(_sprite, _sub, _x, _y, _xscale, _yscale, _col, _alpha) {
	gml_pragma("forceinline");
	if (is_real(_sprite)) {
		if (sprite_exists(_sprite)) {
			draw_sprite_tiled_ext(_sprite, _sub, _x, _y, _xscale, _yscale, _col, _alpha);
		}
	} else {
		CollageDrawImageTiledExt(_sprite, _sub, _x, _y, _xscale, _yscale, _col, _alpha);	
	} 
} 
