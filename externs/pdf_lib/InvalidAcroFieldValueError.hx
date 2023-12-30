package pdf_lib;

@:jsRequire("pdf-lib", "InvalidAcroFieldValueError") extern class InvalidAcroFieldValueError extends js.lib.Error {
	function new();
	static var prototype : InvalidAcroFieldValueError;
}