package pdf_lib;

@:jsRequire("pdf-lib", "UnbalancedParenthesisError") extern class UnbalancedParenthesisError extends PDFParsingError {
	function new(pos:Position);
	static var prototype : UnbalancedParenthesisError;
}