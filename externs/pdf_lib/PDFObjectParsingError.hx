package pdf_lib;

@:jsRequire("pdf-lib", "PDFObjectParsingError") extern class PDFObjectParsingError extends PDFParsingError {
	function new(pos:Position, byte:Float);
	static var prototype : PDFObjectParsingError;
}