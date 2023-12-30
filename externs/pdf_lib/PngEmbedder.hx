package pdf_lib;

/**
	A note of thanks to the developers of https://github.com/foliojs/pdfkit, as
	this class borrows from:
	   https://github.com/devongovett/pdfkit/blob/e71edab0dd4657b5a767804ba86c94c58d01fbca/lib/image/png.coffee
**/
@:jsRequire("pdf-lib", "PngEmbedder") extern class PngEmbedder {
	private function new();
	final bitsPerComponent : Float;
	final height : Float;
	final width : Float;
	final colorSpace : String;
	private final image : Dynamic;
	function embedIntoContext(context:PDFContext, ?ref:PDFRef):js.lib.Promise<PDFRef>;
	private var embedAlphaChannel : Dynamic;
	static var prototype : PngEmbedder;
	@:native("for")
	static function for_(imageData:js.lib.Uint8Array):js.lib.Promise<PngEmbedder>;
}