package pdf_lib;

@:jsRequire("pdf-lib", "IndexOutOfBoundsError") extern class IndexOutOfBoundsError extends js.lib.Error {
	function new(index:Float, min:Float, max:Float);
	static var prototype : IndexOutOfBoundsError;
}