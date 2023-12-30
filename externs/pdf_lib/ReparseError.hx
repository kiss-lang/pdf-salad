package pdf_lib;

@:jsRequire("pdf-lib", "ReparseError") extern class ReparseError extends js.lib.Error {
	function new(className:String, methodName:String);
	static var prototype : ReparseError;
}