package pdf_lib;

/**
	Represents JavaScript that has been embedded in a [[PDFDocument]].
**/
@:jsRequire("pdf-lib", "PDFJavaScript") extern class PDFJavaScript {
	private function new();
	/**
		The unique reference assigned to this embedded script within the document.
	**/
	final ref : PDFRef;
	/**
		The document to which this embedded script belongs.
	**/
	final doc : PDFDocument;
	private var alreadyEmbedded : Dynamic;
	private final embedder : Dynamic;
	/**
		> **NOTE:** You probably don't need to call this method directly. The
		> [[PDFDocument.save]] and [[PDFDocument.saveAsBase64]] methods will
		> automatically ensure all JavaScripts get embedded.
		
		Embed this JavaScript in its document.
	**/
	function embed():js.lib.Promise<ts.Undefined>;
	static var prototype : PDFJavaScript;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFDocument.addJavaScript]] method, which will
		create instances of [[PDFJavaScript]] for you.
		
		Create an instance of [[PDFJavaScript]] from an existing ref and script
	**/
	static dynamic function of(ref:PDFRef, doc:PDFDocument, embedder:pdf_lib.cjs.core.embedders.javascriptembedder.JavaScriptEmbedder):PDFJavaScript;
}