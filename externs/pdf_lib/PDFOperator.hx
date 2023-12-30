package pdf_lib;

@:jsRequire("pdf-lib", "PDFOperator") extern class PDFOperator {
	private function new();
	private final name : Dynamic;
	private final args : Dynamic;
	function clone(?context:PDFContext):PDFOperator;
	function toString():String;
	function sizeInBytes():Float;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFOperator;
	static dynamic function of(name:PDFOperatorNames, ?args:Array<pdf_lib.cjs.core.operators.pdfoperator.PDFOperatorArg>):PDFOperator;
}