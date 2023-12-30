package pdf_lib;

/**
	Represents an image that has been embedded in a [[PDFDocument]].
**/
@:jsRequire("pdf-lib", "PDFImage") extern class PDFImage {
	private function new();
	/**
		The unique reference assigned to this image within the document.
	**/
	final ref : PDFRef;
	/**
		The document to which this image belongs.
	**/
	final doc : PDFDocument;
	/**
		The width of this image in pixels.
	**/
	final width : Float;
	/**
		The height of this image in pixels.
	**/
	final height : Float;
	private var embedder : Dynamic;
	private var embedTask : Dynamic;
	/**
		Compute the width and height of this image after being scaled by the
		given `factor`. For example:
		```js
		image.width  // => 500
		image.height // => 250
		
		const scaled = image.scale(0.5)
		scaled.width  // => 250
		scaled.height // => 125
		```
		This operation is often useful before drawing an image with
		[[PDFPage.drawImage]] to compute the `width` and `height` options.
	**/
	function scale(factor:Float):{
		var width : Float;
		var height : Float;
	};
	/**
		Get the width and height of this image after scaling it as large as
		possible while maintaining its aspect ratio and not exceeding the
		specified `width` and `height`. For example:
		```
		image.width  // => 500
		image.height // => 250
		
		const scaled = image.scaleToFit(750, 1000)
		scaled.width  // => 750
		scaled.height // => 375
		```
		The `width` and `height` parameters can also be thought of as the width
		and height of a box that the scaled image must fit within.
	**/
	function scaleToFit(width:Float, height:Float):{
		var width : Float;
		var height : Float;
	};
	/**
		Get the width and height of this image. For example:
		```js
		const { width, height } = image.size()
		```
	**/
	function size():{
		var width : Float;
		var height : Float;
	};
	/**
		> **NOTE:** You probably don't need to call this method directly. The
		> [[PDFDocument.save]] and [[PDFDocument.saveAsBase64]] methods will
		> automatically ensure all images get embedded.
		
		Embed this image in its document.
	**/
	function embed():js.lib.Promise<ts.Undefined>;
	static var prototype : PDFImage;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFDocument.embedPng]] and [[PDFDocument.embedJpg]]
		> methods, which will create instances of [[PDFImage]] for you.
		
		Create an instance of [[PDFImage]] from an existing ref and embedder
	**/
	static dynamic function of(ref:PDFRef, doc:PDFDocument, embedder:pdf_lib.cjs.api.pdfimage.ImageEmbedder):PDFImage;
}