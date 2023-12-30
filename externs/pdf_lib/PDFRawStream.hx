package pdf_lib;

@:jsRequire("pdf-lib", "PDFRawStream") extern class PDFRawStream extends PDFStream {
	private function new();
	final contents : js.lib.Uint8Array;
	function asUint8Array():js.lib.Uint8Array;
	function clone(?context:PDFContext):PDFRawStream;
	static var prototype : PDFRawStream;
	static dynamic function of(dict:PDFDict, contents:js.lib.Uint8Array):PDFRawStream;
}