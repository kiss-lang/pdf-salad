package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroText") extern class PDFAcroText extends PDFAcroTerminal {
	function MaxLen():Null<PDFNumber>;
	function Q():Null<PDFNumber>;
	function setMaxLength(maxLength:Float):Void;
	function removeMaxLength():Void;
	function getMaxLength():Null<Float>;
	function setQuadding(quadding:Int):Void;
	function getQuadding():Null<Float>;
	function setValue(value:ts.AnyOf2<PDFHexString, PDFString>):Void;
	function removeValue():Void;
	function getValue():Null<ts.AnyOf2<PDFHexString, PDFString>>;
	static var prototype : PDFAcroText;
	static dynamic function fromDict(dict:PDFDict, ref:PDFRef):PDFAcroText;
	static dynamic function create(context:PDFContext):PDFAcroText;
}