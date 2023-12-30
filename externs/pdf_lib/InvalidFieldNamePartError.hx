package pdf_lib;

@:jsRequire("pdf-lib", "InvalidFieldNamePartError") extern class InvalidFieldNamePartError extends js.lib.Error {
	function new(namePart:String);
	static var prototype : InvalidFieldNamePartError;
}