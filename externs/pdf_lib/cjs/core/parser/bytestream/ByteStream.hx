package pdf_lib.cjs.core.parser.bytestream;

@:jsRequire("pdf-lib/cjs/core/parser/ByteStream", "default") extern class ByteStream {
	function new(bytes:js.lib.Uint8Array);
	private final bytes : Dynamic;
	private final length : Dynamic;
	private var idx : Dynamic;
	private var line : Dynamic;
	private var column : Dynamic;
	function moveTo(offset:Float):Void;
	function next():Float;
	function assertNext(expected:Float):Float;
	function peek():Float;
	function peekAhead(steps:Float):Float;
	function peekAt(offset:Float):Float;
	function done():Bool;
	function offset():Float;
	function slice(start:Float, end:Float):js.lib.Uint8Array;
	function position():{
		var line : Float;
		var column : Float;
		var offset : Float;
	};
	static var prototype : ByteStream;
	static dynamic function of(bytes:js.lib.Uint8Array):ByteStream;
	static dynamic function fromPDFRawStream(rawStream:pdf_lib.PDFRawStream):ByteStream;
}