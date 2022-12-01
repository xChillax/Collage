/// @ignore
/* Feather ignore all */
function __CollageImageClass(_spriteInfo, _name, _cropW, _cropH, _ratio, _xOffset, _yOffset) constructor {
	__width = _spriteInfo.width;
	__height  = _spriteInfo.height;
	__cropWidth = _cropW;
	__cropHeight = _cropH;
	__xoffset = _xOffset;
	__yoffset = _yOffset;
	__name = _name;
	__subImagesCount = _spriteInfo.num_subimages;
	__subImagesArray = array_create(__subImagesCount);
	__ratio = _ratio;
	
	static __InternalGetUvs = function(_imageIndex) {
		return __subImagesArray[_imageIndex % __subImagesCount];
	}
	
	static GetName = function() {
		return __name;	
	}
	
	static GetWidth = function() {
		return __width;	
	}
	
	static GetHeight = function() {
		return __height;	
	}
	
	static GetXOffset = function() {
		return __xoffset;	
	}
	
	static GetYOffset = function() {
		return __yoffset;	
	}
	
	static GetUVs = function(_imageIndex) {
		return __InternalGetUvs(_imageIndex);	
	}
	
	static GetSurface = function(_imageIndex) {
		var _texPage = __subImagesArray[_imageIndex % subImagesCount].texturePageStruct;
		return _texPage.GetSurface();	
	}
	
	static GetTexture = function(_imageIndex) {
		var _texPage = __subImagesArray[_imageIndex % subImagesCount].texturePageStruct;
		return _texPage.GetTexture();	
	}
	
	static GetTexturePage = function(_imageIndex) {
		return __subImagesArray[_imageIndex % __subImagesCount].texturePageStruct;
	}
	
	static GetCount = function() {
		return __subImagesCount;	
	}
}
