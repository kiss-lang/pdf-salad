package pdf_lib;

@:jsRequire("pdf-lib", "PDFHeader") extern class PDFHeader {
	private function new();
	private final major : Dynamic;
	private final minor : Dynamic;
	function toString():String;
	function sizeInBytes():Float;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFHeader;
	static dynamic function forVersion(major:Float, minor:Float):PDFHeader;
}