package pdf_lib;

@:jsRequire("pdf-lib", "MissingOnValueCheckError") extern class MissingOnValueCheckError extends js.lib.Error {
	function new(onValue:Dynamic);
	static var prototype : MissingOnValueCheckError;
}