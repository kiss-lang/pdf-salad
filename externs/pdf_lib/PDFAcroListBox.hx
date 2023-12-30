package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroListBox") extern class PDFAcroListBox extends PDFAcroChoice {
	static var prototype : PDFAcroListBox;
	static dynamic function fromDict(dict:PDFDict, ref:PDFRef):PDFAcroListBox;
	static dynamic function create(context:PDFContext):PDFAcroListBox;
}