/// @func CollageGet(name)
/// @param {String} name
/* Feather ignore all */
function CollageGet(_identifier) {
	gml_pragma("forceinline");
    return global.__CollageTexturePagesMap[$ _identifier];
}
