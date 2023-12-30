package pdf_lib;

@:jsRequire("pdf-lib", "FieldExistsAsNonTerminalError") extern class FieldExistsAsNonTerminalError extends js.lib.Error {
	function new(name:String);
	static var prototype : FieldExistsAsNonTerminalError;
}