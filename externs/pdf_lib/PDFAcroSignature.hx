package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroSignature") extern class PDFAcroSignature extends PDFAcroTerminal {
	static var prototype : PDFAcroSignature;
	static dynamic function fromDict(dict:PDFDict, ref:PDFRef):PDFAcroSignature;
}