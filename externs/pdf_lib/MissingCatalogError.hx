package pdf_lib;

@:jsRequire("pdf-lib", "MissingCatalogError") extern class MissingCatalogError extends js.lib.Error {
	function new(?ref:PDFObject);
	static var prototype : MissingCatalogError;
}