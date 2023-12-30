package pdf_lib;

@:jsRequire("pdf-lib", "PDFObject") extern class PDFObject {
	function new();
	function clone(?_context:PDFContext):PDFObject;
	function toString():String;
	function sizeInBytes():Float;
	function copyBytesInto(_buffer:js.lib.Uint8Array, _offset:Float):Float;
	static var prototype : PDFObject;
}