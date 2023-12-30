package pdf_lib;

@:jsRequire("pdf-lib", "PDFPageEmbedder") extern class PDFPageEmbedder {
	private function new();
	final width : Float;
	final height : Float;
	final boundingBox : PageBoundingBox;
	final transformationMatrix : TransformationMatrix;
	private final page : Dynamic;
	function embedIntoContext(context:PDFContext, ?ref:PDFRef):js.lib.Promise<PDFRef>;
	private var decodeContents : Dynamic;
	static var prototype : PDFPageEmbedder;
	@:native("for")
	static function for_(page:PDFPageLeaf, ?boundingBox:PageBoundingBox, ?transformationMatrix:TransformationMatrix):js.lib.Promise<PDFPageEmbedder>;
}