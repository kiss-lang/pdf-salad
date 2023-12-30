package pdf_lib;

@:jsRequire("pdf-lib", "PDFArrayIsNotRectangleError") extern class PDFArrayIsNotRectangleError extends js.lib.Error {
	function new(size:Float);
	static var prototype : PDFArrayIsNotRectangleError;
}