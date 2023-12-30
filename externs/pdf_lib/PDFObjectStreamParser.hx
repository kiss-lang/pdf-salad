package pdf_lib;

@:jsRequire("pdf-lib", "PDFObjectStreamParser") extern class PDFObjectStreamParser extends PDFObjectParser {
	function new(rawStream:PDFRawStream, ?shouldWaitForTick:() -> Bool);
	private var alreadyParsed : Dynamic;
	private final shouldWaitForTick : Dynamic;
	private final firstOffset : Dynamic;
	private final objectCount : Dynamic;
	function parseIntoContext():js.lib.Promise<ts.Undefined>;
	private var parseOffsetsAndObjectNumbers : Dynamic;
	static var prototype : PDFObjectStreamParser;
	static dynamic function forStream(rawStream:PDFRawStream, ?shouldWaitForTick:() -> Bool):PDFObjectStreamParser;
}