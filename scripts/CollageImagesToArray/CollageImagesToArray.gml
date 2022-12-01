/// @func CollageImagesToArray(collage_or_name)
/// @param {Struct.Collage, String} collage_or_name
/// @return {Array<Struct.__ColllageImageClass>}
/* Feather ignore all */
function CollageImagesToArray(_identifier) {
	gml_pragma("forceinline");
    if (is_string(_identifier)) {
		if (!__COLLAGE_IMAGES_ARE_PUBLIC) {
			__CollageThrow("__COLLAGE_IMAGES_ARE_PUBLIC is set to false and therefore string names do not work.");	
		}
		
        return global.__CollageTexturePagesMap[$ _identifier].ImagesToArray();
    }
    
    return _identifier.ImagesToArray();
}