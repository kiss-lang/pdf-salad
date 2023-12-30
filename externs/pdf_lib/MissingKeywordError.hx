package pdf_lib;

@:jsRequire("pdf-lib", "MissingKeywordError") extern class MissingKeywordError extends PDFParsingError {
	function new(pos:Position, keyword:Array<Float>);
	static var prototype : MissingKeywordError;
}