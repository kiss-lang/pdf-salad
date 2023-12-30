package pdf_lib;

@:jsRequire("pdf-lib", "MissingDAEntryError") extern class MissingDAEntryError extends js.lib.Error {
	function new(fieldName:String);
	static var prototype : MissingDAEntryError;
}