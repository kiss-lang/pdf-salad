package pdf_lib;

@:jsRequire("pdf-lib", "PDFTrailerDict") extern class PDFTrailerDict {
	private function new();
	final dict : PDFDict;
	function toString():String;
	function sizeInBytes():Float;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFTrailerDict;
	static dynamic function of(dict:PDFDict):PDFTrailerDict;
}