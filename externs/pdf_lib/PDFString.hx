package pdf_lib;

@:jsRequire("pdf-lib", "PDFString") extern class PDFString extends PDFObject {
	private function new();
	private final value : Dynamic;
	function asBytes():js.lib.Uint8Array;
	function decodeText():String;
	function decodeDate():js.lib.Date;
	function asString():String;
	function clone():PDFString;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFString;
	static dynamic function of(value:String):PDFString;
	static dynamic function fromDate(date:js.lib.Date):PDFString;
}