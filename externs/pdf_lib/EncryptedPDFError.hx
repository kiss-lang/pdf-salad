package pdf_lib;

@:jsRequire("pdf-lib", "EncryptedPDFError") extern class EncryptedPDFError extends js.lib.Error {
	function new();
	static var prototype : EncryptedPDFError;
}