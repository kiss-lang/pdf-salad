package pdf_lib;

@:jsRequire("pdf-lib", "PDFTrailer") extern class PDFTrailer {
	private function new();
	private final lastXRefOffset : Dynamic;
	function toString():String;
	function sizeInBytes():Float;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFTrailer;
	static dynamic function forLastCrossRefSectionOffset(offset:Float):PDFTrailer;
}