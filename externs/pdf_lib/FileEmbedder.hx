package pdf_lib;

@:jsRequire("pdf-lib", "FileEmbedder") extern class FileEmbedder {
	private function new();
	private final fileData : Dynamic;
	final fileName : String;
	final options : pdf_lib.cjs.core.embedders.fileembedder.EmbeddedFileOptions;
	function embedIntoContext(context:PDFContext, ?ref:PDFRef):js.lib.Promise<PDFRef>;
	static var prototype : FileEmbedder;
	@:native("for")
	static function for_(bytes:js.lib.Uint8Array, fileName:String, ?options:pdf_lib.cjs.core.embedders.fileembedder.EmbeddedFileOptions):FileEmbedder;
}