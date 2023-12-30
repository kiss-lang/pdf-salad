package pdf_lib;

@:jsRequire("pdf-lib", "PDFNumber") extern class PDFNumber extends PDFObject {
	private function new();
	private final numberValue : Dynamic;
	private final stringValue : Dynamic;
	function asNumber():Float;
	function value():Float;
	function clone():PDFNumber;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFNumber;
	static dynamic function of(value:Float):PDFNumber;
}