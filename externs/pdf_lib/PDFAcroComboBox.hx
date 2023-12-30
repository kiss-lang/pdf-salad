package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroComboBox") extern class PDFAcroComboBox extends PDFAcroChoice {
	static var prototype : PDFAcroComboBox;
	static dynamic function fromDict(dict:PDFDict, ref:PDFRef):PDFAcroComboBox;
	static dynamic function create(context:PDFContext):PDFAcroComboBox;
}