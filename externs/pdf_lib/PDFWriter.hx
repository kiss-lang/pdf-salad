package pdf_lib;

@:jsRequire("pdf-lib", "PDFWriter") extern class PDFWriter {
	private function new(context:PDFContext, objectsPerTick:Float);
	private final context : PDFContext;
	private final objectsPerTick : Float;
	private var parsedObjects : Dynamic;
	function serializeToBuffer():js.lib.Promise<js.lib.Uint8Array>;
	private function computeIndirectObjectSize(__0:ts.Tuple2<PDFRef, PDFObject>):Float;
	private function createTrailerDict():PDFDict;
	private function computeBufferSize():js.lib.Promise<pdf_lib.cjs.core.writers.pdfwriter.SerializationInfo>;
	private dynamic function shouldWaitForTick(n:Float):Bool;
	static var prototype : PDFWriter;
	static dynamic function forContext(context:PDFContext, objectsPerTick:Float):PDFWriter;
}