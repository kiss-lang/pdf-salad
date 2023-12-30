package pdf_lib;

@:jsRequire("pdf-lib", "UnsupportedEncodingError") extern class UnsupportedEncodingError extends js.lib.Error {
	function new(encoding:String);
	static var prototype : UnsupportedEncodingError;
}