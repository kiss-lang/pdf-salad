package pdf_lib;

@:jsRequire("pdf-lib", "PrivateConstructorError") extern class PrivateConstructorError extends js.lib.Error {
	function new(className:String);
	static var prototype : PrivateConstructorError;
}