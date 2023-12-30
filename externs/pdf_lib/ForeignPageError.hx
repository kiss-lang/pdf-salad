package pdf_lib;

@:jsRequire("pdf-lib", "ForeignPageError") extern class ForeignPageError extends js.lib.Error {
	function new();
	static var prototype : ForeignPageError;
}