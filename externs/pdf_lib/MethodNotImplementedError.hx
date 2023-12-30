package pdf_lib;

@:jsRequire("pdf-lib", "MethodNotImplementedError") extern class MethodNotImplementedError extends js.lib.Error {
	function new(className:String, methodName:String);
	static var prototype : MethodNotImplementedError;
}