package pdf_lib;

@:jsRequire("pdf-lib", "ExceededMaxLengthError") extern class ExceededMaxLengthError extends js.lib.Error {
	function new(textLength:Float, maxLength:Float, name:String);
	static var prototype : ExceededMaxLengthError;
}