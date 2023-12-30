package pdf_lib;

@:jsRequire("pdf-lib", "MissingPDFHeaderError") extern class MissingPDFHeaderError extends PDFParsingError {
	function new(pos:Position);
	static var prototype : MissingPDFHeaderError;
}