package pdf_lib;

@:jsRequire("pdf-lib", "RichTextFieldReadError") extern class RichTextFieldReadError extends js.lib.Error {
	function new(fieldName:String);
	static var prototype : RichTextFieldReadError;
}