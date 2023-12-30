package pdf_lib;

@:jsRequire("pdf-lib", "PDFRef") extern class PDFRef extends PDFObject {
	private function new();
	final objectNumber : Float;
	final generationNumber : Float;
	final tag : String;
	function clone():PDFRef;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFRef;
	static dynamic function of(objectNumber:Float, ?generationNumber:Float):PDFRef;
}