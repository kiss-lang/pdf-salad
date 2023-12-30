package pdf_lib;

@:jsRequire("pdf-lib", "UnexpectedFieldTypeError") extern class UnexpectedFieldTypeError extends js.lib.Error {
	function new(name:String, expected:Dynamic, actual:Dynamic);
	static var prototype : UnexpectedFieldTypeError;
}