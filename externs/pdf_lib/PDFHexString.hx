package pdf_lib;

@:jsRequire("pdf-lib", "PDFHexString") extern class PDFHexString extends PDFObject {
	function new(value:String);
	private final value : Dynamic;
	function asBytes():js.lib.Uint8Array;
	function decodeText():String;
	function decodeDate():js.lib.Date;
	function asString():String;
	function clone():PDFHexString;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFHexString;
	static dynamic function of(value:String):PDFHexString;
	static dynamic function fromText(value:String):PDFHexString;
}