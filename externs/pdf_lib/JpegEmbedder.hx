package pdf_lib;

/**
	A note of thanks to the developers of https://github.com/foliojs/pdfkit, as
	this class borrows from:
	   https://github.com/foliojs/pdfkit/blob/a6af76467ce06bd6a2af4aa7271ccac9ff152a7d/lib/image/jpeg.js
**/
@:jsRequire("pdf-lib", "JpegEmbedder") extern class JpegEmbedder {
	private function new();
	final bitsPerComponent : Float;
	final height : Float;
	final width : Float;
	final colorSpace : ColorSpace;
	private final imageData : Dynamic;
	function embedIntoContext(context:PDFContext, ?ref:PDFRef):js.lib.Promise<PDFRef>;
	static var prototype : JpegEmbedder;
	@:native("for")
	static function for_(imageData:js.lib.Uint8Array):js.lib.Promise<JpegEmbedder>;
}