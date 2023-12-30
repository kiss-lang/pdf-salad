package pdf_lib;

@:jsRequire("pdf-lib", "UnrecognizedStreamTypeError") extern class UnrecognizedStreamTypeError extends js.lib.Error {
	function new(stream:Dynamic);
	static var prototype : UnrecognizedStreamTypeError;
}