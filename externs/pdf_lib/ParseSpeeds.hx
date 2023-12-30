package pdf_lib;

@:jsRequire("pdf-lib", "ParseSpeeds") @:enum extern abstract ParseSpeeds(Int) from Int to Int {
	var Fastest;
	var Fast;
	var Medium;
	var Slow;
}