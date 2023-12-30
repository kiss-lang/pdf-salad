package pdf_lib;

@:jsRequire("pdf-lib", "MissingPageContentsEmbeddingError") extern class MissingPageContentsEmbeddingError extends js.lib.Error {
	function new();
	static var prototype : MissingPageContentsEmbeddingError;
}