package pdf_lib;

@:jsRequire("pdf-lib", "NoSuchFieldError") extern class NoSuchFieldError extends js.lib.Error {
	function new(name:String);
	static var prototype : NoSuchFieldError;
}