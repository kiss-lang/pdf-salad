package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroCheckBox") extern class PDFAcroCheckBox extends PDFAcroButton {
	function setValue(value:PDFName):Void;
	function getValue():PDFName;
	function getOnValue():Null<PDFName>;
	static var prototype : PDFAcroCheckBox;
	static dynamic function fromDict(dict:PDFDict, ref:PDFRef):PDFAcroCheckBox;
	static dynamic function create(context:PDFContext):PDFAcroCheckBox;
}