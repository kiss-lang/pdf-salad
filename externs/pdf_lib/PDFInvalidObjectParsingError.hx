package pdf_lib;

@:jsRequire("pdf-lib", "PDFInvalidObjectParsingError") extern class PDFInvalidObjectParsingError extends PDFParsingError {
	function new(pos:Position);
	static var prototype : PDFInvalidObjectParsingError;
}