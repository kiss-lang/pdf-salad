package pdf_lib;

@:jsRequire("pdf-lib", "PDFContentStream") extern class PDFContentStream extends PDFFlateStream {
	private function new();
	private final operators : Dynamic;
	function push(operators:haxe.extern.Rest<PDFOperator>):Void;
	function clone(?context:PDFContext):PDFContentStream;
	function getUnencodedContentsSize():Float;
	static var prototype : PDFContentStream;
	static dynamic function of(dict:PDFDict, operators:Array<PDFOperator>, ?encode:Bool):PDFContentStream;
}