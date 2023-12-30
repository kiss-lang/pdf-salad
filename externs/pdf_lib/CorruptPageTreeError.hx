package pdf_lib;

@:jsRequire("pdf-lib", "CorruptPageTreeError") extern class CorruptPageTreeError extends js.lib.Error {
	function new(targetIndex:Float, operation:String);
	static var prototype : CorruptPageTreeError;
}