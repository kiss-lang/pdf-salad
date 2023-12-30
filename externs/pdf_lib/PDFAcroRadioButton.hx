package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroRadioButton") extern class PDFAcroRadioButton extends PDFAcroButton {
	function setValue(value:PDFName):Void;
	function getValue():PDFName;
	function getOnValues():Array<PDFName>;
	static var prototype : PDFAcroRadioButton;
	static dynamic function fromDict(dict:PDFDict, ref:PDFRef):PDFAcroRadioButton;
	static dynamic function create(context:PDFContext):PDFAcroRadioButton;
}