package pdf_lib;

@:jsRequire("pdf-lib", "PDFInvalidObject") extern class PDFInvalidObject extends PDFObject {
	private function new();
	private final data : Dynamic;
	function clone():PDFInvalidObject;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFInvalidObject;
	static dynamic function of(data:js.lib.Uint8Array):PDFInvalidObject;
}