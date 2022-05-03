/// @func CollageImageExists(identifier)
/// @param identifier
function CollageImageExists(_identifier) {
	gml_pragma("forceinline");
	if (is_string(_identifier)) {
		if (!COLLAGE_IMAGES_ARE_PUBLIC) {
			__CollageThrow("COLLAGE_IMAGES_ARE_PUBLIC is set to false and therefore string names do not work.");
		}
		return variable_struct_exists(global.__CollageImageMap, _identifier);		
	} 
	
	return ((instanceof(_identifier) == "__CollageImageClass") && (variable_struct_exists(global.__CollageImageMap, _identifier.name)));
}
