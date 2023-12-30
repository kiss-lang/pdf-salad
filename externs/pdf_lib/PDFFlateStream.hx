package pdf_lib;

@:jsRequire("pdf-lib", "PDFFlateStream") extern class PDFFlateStream extends PDFStream {
	function new(dict:PDFDict, encode:Bool);
	private final contentsCache : Cache<js.lib.Uint8Array>;
	private final encode : Bool;
	dynamic function computeContents():js.lib.Uint8Array;
	function getUnencodedContents():js.lib.Uint8Array;
	static var prototype : PDFFlateStream;
}