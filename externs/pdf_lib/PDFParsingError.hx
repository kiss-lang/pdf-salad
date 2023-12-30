package pdf_lib;

@:jsRequire("pdf-lib", "PDFParsingError") extern class PDFParsingError extends js.lib.Error {
	function new(pos:Position, details:String);
	static var prototype : PDFParsingError;
}