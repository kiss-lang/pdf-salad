package pdf_lib;

@jsInaccessible extern class PDFNull extends PDFObject {
	function asNull():Dynamic;
	function clone():PDFNull;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFNull;
}