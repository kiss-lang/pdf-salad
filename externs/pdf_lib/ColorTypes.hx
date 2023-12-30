package pdf_lib;

@:jsRequire("pdf-lib", "ColorTypes") @:enum extern abstract ColorTypes(String) from String to String {
	var Grayscale;
	var RGB;
	var CMYK;
}