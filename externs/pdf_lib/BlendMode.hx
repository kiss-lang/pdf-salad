package pdf_lib;

@:jsRequire("pdf-lib", "BlendMode") @:enum extern abstract BlendMode(String) from String to String {
	var Normal;
	var Multiply;
	var Screen;
	var Overlay;
	var Darken;
	var Lighten;
	var ColorDodge;
	var ColorBurn;
	var HardLight;
	var SoftLight;
	var Difference;
	var Exclusion;
}