package pdf_lib;

@:jsRequire("pdf-lib", "ImageAlignment") @:enum extern abstract ImageAlignment(Int) from Int to Int {
	var Left;
	var Center;
	var Right;
}