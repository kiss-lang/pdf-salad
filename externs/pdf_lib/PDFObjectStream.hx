package pdf_lib;

@:jsRequire("pdf-lib", "PDFObjectStream") extern class PDFObjectStream extends PDFFlateStream {
	private function new();
	private final objects : Dynamic;
	private final offsets : Dynamic;
	private final offsetsString : Dynamic;
	function getObjectsCount():Float;
	function clone(?context:PDFContext):PDFObjectStream;
	function getUnencodedContentsSize():Float;
	private var computeOffsetsString : Dynamic;
	private var computeObjectOffsets : Dynamic;
	static var prototype : PDFObjectStream;
	static dynamic function withContextAndObjects(context:PDFContext, objects:Array<pdf_lib.cjs.core.structures.pdfobjectstream.IndirectObject>, ?encode:Bool):PDFObjectStream;
}