package pdf_lib;

@:jsRequire("pdf-lib", "PDFStreamParsingError") extern class PDFStreamParsingError extends PDFParsingError {
	function new(pos:Position);
	static var prototype : PDFStreamParsingError;
}