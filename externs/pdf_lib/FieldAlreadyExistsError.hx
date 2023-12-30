package pdf_lib;

@:jsRequire("pdf-lib", "FieldAlreadyExistsError") extern class FieldAlreadyExistsError extends js.lib.Error {
	function new(name:String);
	static var prototype : FieldAlreadyExistsError;
}