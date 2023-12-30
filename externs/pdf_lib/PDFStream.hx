package pdf_lib;

@:jsRequire("pdf-lib", "PDFStream") extern class PDFStream extends PDFObject {
	function new(dict:PDFDict);
	final dict : PDFDict;
	function clone(?_context:PDFContext):PDFStream;
	function getContentsString():String;
	function getContents():js.lib.Uint8Array;
	function getContentsSize():Float;
	function updateDict():Void;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFStream;
}