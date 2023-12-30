package pdf_lib;

/**
	A note of thanks to the developers of https://github.com/foliojs/pdfkit, as
	this class borrows from:
	   https://github.com/devongovett/pdfkit/blob/e71edab0dd4657b5a767804ba86c94c58d01fbca/lib/image/jpeg.coffee
**/
@:jsRequire("pdf-lib", "CustomFontEmbedder") extern class CustomFontEmbedder {
	private function new(font:pdf_lib.cjs.types.fontkit.Font, fontData:js.lib.Uint8Array, ?customName:String, ?fontFeatures:pdf_lib.cjs.types.fontkit.TypeFeatures);
	final font : pdf_lib.cjs.types.fontkit.Font;
	final scale : Float;
	final fontData : js.lib.Uint8Array;
	final fontName : String;
	final customName : Null<String>;
	final fontFeatures : Null<pdf_lib.cjs.types.fontkit.TypeFeatures>;
	private var baseFontName : String;
	private var glyphCache : Cache<Array<pdf_lib.cjs.types.fontkit.Glyph>>;
	/**
		Encode the JavaScript string into this font. (JavaScript encodes strings in
		Unicode, but embedded fonts use their own custom encodings)
	**/
	function encodeText(text:String):PDFHexString;
	function widthOfTextAtSize(text:String, size:Float):Float;
	function heightOfFontAtSize(size:Float, ?options:{ @:optional var descender : Bool; }):Float;
	function sizeOfFontAtHeight(height:Float):Float;
	function embedIntoContext(context:PDFContext, ?ref:PDFRef):js.lib.Promise<PDFRef>;
	private function embedFontDict(context:PDFContext, ?ref:PDFRef):js.lib.Promise<PDFRef>;
	private function isCFF():Bool;
	private function embedCIDFontDict(context:PDFContext):js.lib.Promise<PDFRef>;
	private function embedFontDescriptor(context:PDFContext):js.lib.Promise<PDFRef>;
	private function serializeFont():js.lib.Promise<js.lib.Uint8Array>;
	private function embedFontStream(context:PDFContext):js.lib.Promise<PDFRef>;
	private function embedUnicodeCmap(context:PDFContext):PDFRef;
	private function glyphId(?glyph:pdf_lib.cjs.types.fontkit.Glyph):Float;
	private function computeWidths():Array<ts.AnyOf2<Float, Array<Float>>>;
	private var allGlyphsInFontSortedById : Dynamic;
	static var prototype : CustomFontEmbedder;
	@:native("for")
	static function for_(fontkit:pdf_lib.cjs.types.fontkit.Fontkit, fontData:js.lib.Uint8Array, ?customName:String, ?fontFeatures:pdf_lib.cjs.types.fontkit.TypeFeatures):js.lib.Promise<CustomFontEmbedder>;
}