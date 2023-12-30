package pdf_lib;

@:jsRequire("pdf-lib", "LineCapStyle") @:enum extern abstract LineCapStyle(Int) from Int to Int {
	var Butt;
	var Round;
	var Projecting;
}