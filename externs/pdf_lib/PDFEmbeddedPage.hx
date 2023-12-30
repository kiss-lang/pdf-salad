package pdf_lib;

/**
	Represents a PDF page that has been embedded in a [[PDFDocument]].
**/
@:jsRequire("pdf-lib", "PDFEmbeddedPage") extern class PDFEmbeddedPage {
	private function new();
	/**
		The unique reference assigned to this embedded page within the document.
	**/
	final ref : PDFRef;
	/**
		The document to which this embedded page belongs.
	**/
	final doc : PDFDocument;
	/**
		The width of this page in pixels.
	**/
	final width : Float;
	/**
		The height of this page in pixels.
	**/
	final height : Float;
	private var alreadyEmbedded : Dynamic;
	private final embedder : Dynamic;
	/**
		Compute the width and height of this page after being scaled by the
		given `factor`. For example:
		```js
		embeddedPage.width  // => 500
		embeddedPage.height // => 250
		
		const scaled = embeddedPage.scale(0.5)
		scaled.width  // => 250
		scaled.height // => 125
		```
		This operation is often useful before drawing a page with
		[[PDFPage.drawPage]] to compute the `width` and `height` options.
	**/
	function scale(factor:Float):{
		var width : Float;
		var height : Float;
	};
	/**
		Get the width and height of this page. For example:
		```js
		const { width, height } = embeddedPage.size()
		```
	**/
	function size():{
		var width : Float;
		var height : Float;
	};
	/**
		> **NOTE:** You probably don't need to call this method directly. The
		> [[PDFDocument.save]] and [[PDFDocument.saveAsBase64]] methods will
		> automatically ensure all embeddable pages get embedded.
		
		Embed this embeddable page in its document.
	**/
	function embed():js.lib.Promise<ts.Undefined>;
	static var prototype : PDFEmbeddedPage;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFDocument.embedPdf]] and
		> [[PDFDocument.embedPage]] methods, which will create instances of
		> [[PDFEmbeddedPage]] for you.
		
		Create an instance of [[PDFEmbeddedPage]] from an existing ref and embedder
	**/
	static dynamic function of(ref:PDFRef, doc:PDFDocument, embedder:PDFPageEmbedder):PDFEmbeddedPage;
}