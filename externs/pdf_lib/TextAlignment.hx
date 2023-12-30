package pdf_lib;

@:jsRequire("pdf-lib", "TextAlignment") @:enum extern abstract TextAlignment(Int) from Int to Int {
	var Left;
	var Center;
	var Right;
}