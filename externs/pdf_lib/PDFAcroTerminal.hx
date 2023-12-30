package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroTerminal") extern class PDFAcroTerminal extends PDFAcroField {
	function FT():PDFName;
	function getWidgets():Array<PDFWidgetAnnotation>;
	function addWidget(ref:PDFRef):Void;
	function removeWidget(idx:Float):Void;
	function normalizedEntries():{
		var Kids : PDFArray;
	};
	static var prototype : PDFAcroTerminal;
	static dynamic function fromDict(dict:PDFDict, ref:PDFRef):PDFAcroTerminal;
}