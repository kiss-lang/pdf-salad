package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroNonTerminal") extern class PDFAcroNonTerminal extends PDFAcroField {
	function addField(field:PDFRef):Void;
	function normalizedEntries():{
		var Kids : PDFArray;
	};
	static var prototype : PDFAcroNonTerminal;
	static dynamic function fromDict(dict:PDFDict, ref:PDFRef):PDFAcroNonTerminal;
	static dynamic function create(context:PDFContext):PDFAcroNonTerminal;
}