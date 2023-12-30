package pdf_lib;

/**
	A note of thanks to the developers of https://github.com/foliojs/pdfkit, as
	this class borrows from:
	   https://github.com/foliojs/pdfkit/blob/f91bdd61c164a72ea06be1a43dc0a412afc3925f/lib/font/afm.coffee
**/
@:jsRequire("pdf-lib", "StandardFontEmbedder") extern class StandardFontEmbedder {
	private function new();
	final font : pdf_lib.standard_fonts.Font;
	final encoding : pdf_lib.standard_fonts.Encoding;
	final fontName : String;
	final customName : Null<String>;
	/**
		Encode the JavaScript string into this font. (JavaScript encodes strings in
		Unicode, but standard fonts use either WinAnsi, ZapfDingbats, or Symbol
		encodings)
	**/
	function encodeText(text:String):PDFHexString;
	function widthOfTextAtSize(text:String, size:Float):Float;
	function heightOfFontAtSize(size:Float, ?options:{ @:optional var descender : Bool; }):Float;
	function sizeOfFontAtHeight(height:Float):Float;
	function embedIntoContext(context:PDFContext, ?ref:PDFRef):PDFRef;
	private var widthOfGlyph : Dynamic;
	private var encodeTextAsGlyphs : Dynamic;
	static var prototype : StandardFontEmbedder;
	@:native("for")
	static dynamic function for_(fontName:pdf_lib.standard_fonts.FontNames, ?customName:String):StandardFontEmbedder;
}