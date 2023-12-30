package pdf_lib;

@:jsRequire("pdf-lib", "PDFBool") extern class PDFBool extends PDFObject {
	private function new();
	private final value : Dynamic;
	function asBoolean():Bool;
	function clone():PDFBool;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFBool;
	static final True : PDFBool;
	static final False : PDFBool;
}