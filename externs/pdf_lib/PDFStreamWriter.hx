package pdf_lib;

@:jsRequire("pdf-lib", "PDFStreamWriter") extern class PDFStreamWriter extends PDFWriter {
	private function new();
	private final encodeStreams : Dynamic;
	private final objectsPerStream : Dynamic;
	private function computeBufferSize():js.lib.Promise<{
		var size : Float;
		var header : PDFHeader;
		var indirectObjects : Array<ts.Tuple2<PDFRef, PDFObject>>;
		var trailer : PDFTrailer;
	}>;
	static var prototype : PDFStreamWriter;
	static dynamic function forContext(context:PDFContext, objectsPerTick:Float, ?encodeStreams:Bool, ?objectsPerStream:Float):PDFStreamWriter;
}