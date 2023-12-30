package pdf_lib;

@:jsRequire("pdf-lib", "InvalidMaxLengthError") extern class InvalidMaxLengthError extends js.lib.Error {
	function new(textLength:Float, maxLength:Float, name:String);
	static var prototype : InvalidMaxLengthError;
}