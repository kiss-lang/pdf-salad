package pdf_lib;

/**
	A note of thanks to the developers of https://github.com/foliojs/pdfkit, as
	this class borrows from:
	   https://github.com/devongovett/pdfkit/blob/e71edab0dd4657b5a767804ba86c94c58d01fbca/lib/image/jpeg.coffee
**/
@:jsRequire("pdf-lib", "CustomFontSubsetEmbedder") extern class CustomFontSubsetEmbedder extends CustomFontEmbedder {
	private function new();
	private final subset : Dynamic;
	private final glyphs : Dynamic;
	private final glyphIdMap : Dynamic;
	static var prototype : CustomFontSubsetEmbedder;
	@:native("for")
	static function for_(fontkit:pdf_lib.cjs.types.fontkit.Fontkit, fontData:js.lib.Uint8Array, ?customFontName:String, ?fontFeatures:pdf_lib.cjs.types.fontkit.TypeFeatures):js.lib.Promise<CustomFontSubsetEmbedder>;
}