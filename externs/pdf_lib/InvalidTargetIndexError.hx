package pdf_lib;

@:jsRequire("pdf-lib", "InvalidTargetIndexError") extern class InvalidTargetIndexError extends js.lib.Error {
	function new(targetIndex:Float, Count:Float);
	static var prototype : InvalidTargetIndexError;
}