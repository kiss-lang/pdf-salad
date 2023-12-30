package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroPushButton") extern class PDFAcroPushButton extends PDFAcroButton {
	static var prototype : PDFAcroPushButton;
	static dynamic function fromDict(dict:PDFDict, ref:PDFRef):PDFAcroPushButton;
	static dynamic function create(context:PDFContext):PDFAcroPushButton;
}