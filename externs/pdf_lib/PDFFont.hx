package pdf_lib;

/**
	Represents a font that has been embedded in a [[PDFDocument]].
**/
@:jsRequire("pdf-lib", "PDFFont") extern class PDFFont {
	private function new();
	/**
		The unique reference assigned to this font within the document.
	**/
	final ref : PDFRef;
	/**
		The document to which this font belongs.
	**/
	final doc : PDFDocument;
	/**
		The name of this font.
	**/
	final name : String;
	private var modified : Dynamic;
	private final embedder : Dynamic;
	/**
		> **NOTE:** You probably don't need to call this method directly. The
		> [[PDFPage.drawText]] method will automatically encode the text it is
		> given.
		
		Encodes a string of text in this font.
	**/
	function encodeText(text:String):PDFHexString;
	/**
		Measure the width of a string of text drawn in this font at a given size.
		For example:
		```js
		const width = font.widthOfTextAtSize('Foo Bar Qux Baz', 36)
		```
	**/
	function widthOfTextAtSize(text:String, size:Float):Float;
	/**
		Measure the height of this font at a given size. For example:
		```js
		const height = font.heightAtSize(24)
		```
		
		The `options.descender` value controls whether or not the font's
		descender is included in the height calculation.
	**/
	function heightAtSize(size:Float, ?options:{ @:optional var descender : Bool; }):Float;
	/**
		Compute the font size at which this font is a given height. For example:
		```js
		const fontSize = font.sizeAtHeight(12)
		```
	**/
	function sizeAtHeight(height:Float):Float;
	/**
		Get the set of unicode code points that can be represented by this font.
	**/
	function getCharacterSet():Array<Float>;
	/**
		> **NOTE:** You probably don't need to call this method directly. The
		> [[PDFDocument.save]] and [[PDFDocument.saveAsBase64]] methods will
		> automatically ensure all fonts get embedded.
		
		Embed this font in its document.
	**/
	function embed():js.lib.Promise<ts.Undefined>;
	static var prototype : PDFFont;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFDocument.embedFont]] and
		> [[PDFDocument.embedStandardFont]] methods, which will create instances
		> of [[PDFFont]] for you.
		
		Create an instance of [[PDFFont]] from an existing ref and embedder
	**/
	static dynamic function of(ref:PDFRef, doc:PDFDocument, embedder:pdf_lib.cjs.api.pdffont.FontEmbedder):PDFFont;
}