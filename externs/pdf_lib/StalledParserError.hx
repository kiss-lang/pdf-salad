package pdf_lib;

@:jsRequire("pdf-lib", "StalledParserError") extern class StalledParserError extends PDFParsingError {
	function new(pos:Position);
	static var prototype : StalledParserError;
}