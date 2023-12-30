package pdf_lib;

@:jsRequire("pdf-lib", "UnexpectedObjectTypeError") extern class UnexpectedObjectTypeError extends js.lib.Error {
	function new(expected:Dynamic, actual:Dynamic);
	static var prototype : UnexpectedObjectTypeError;
}