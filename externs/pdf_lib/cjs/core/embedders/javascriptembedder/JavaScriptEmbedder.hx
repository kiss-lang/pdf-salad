package pdf_lib.cjs.core.embedders.javascriptembedder;

@:jsRequire("pdf-lib/cjs/core/embedders/JavaScriptEmbedder", "default") extern class JavaScriptEmbedder {
	private function new();
	private final script : Dynamic;
	final scriptName : String;
	function embedIntoContext(context:pdf_lib.PDFContext, ?ref:pdf_lib.PDFRef):js.lib.Promise<pdf_lib.PDFRef>;
	static var prototype : JavaScriptEmbedder;
	@:native("for")
	static function for_(script:String, scriptName:String):JavaScriptEmbedder;
}