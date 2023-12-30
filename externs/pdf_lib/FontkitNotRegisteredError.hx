package pdf_lib;

@:jsRequire("pdf-lib", "FontkitNotRegisteredError") extern class FontkitNotRegisteredError extends js.lib.Error {
	function new();
	static var prototype : FontkitNotRegisteredError;
}