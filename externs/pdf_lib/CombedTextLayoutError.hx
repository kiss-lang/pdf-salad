package pdf_lib;

@:jsRequire("pdf-lib", "CombedTextLayoutError") extern class CombedTextLayoutError extends js.lib.Error {
	function new(lineLength:Float, cellCount:Float);
	static var prototype : CombedTextLayoutError;
}