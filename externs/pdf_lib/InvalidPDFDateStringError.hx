package pdf_lib;

@:jsRequire("pdf-lib", "InvalidPDFDateStringError") extern class InvalidPDFDateStringError extends js.lib.Error {
	function new(value:String);
	static var prototype : InvalidPDFDateStringError;
}