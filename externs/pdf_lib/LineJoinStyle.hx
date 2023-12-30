package pdf_lib;

@:jsRequire("pdf-lib", "LineJoinStyle") @:enum extern abstract LineJoinStyle(Int) from Int to Int {
	var Miter;
	var Round;
	var Bevel;
}