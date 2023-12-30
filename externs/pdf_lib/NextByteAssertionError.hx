package pdf_lib;

@:jsRequire("pdf-lib", "NextByteAssertionError") extern class NextByteAssertionError extends PDFParsingError {
	function new(pos:Position, expectedByte:Float, actualByte:Float);
	static var prototype : NextByteAssertionError;
}