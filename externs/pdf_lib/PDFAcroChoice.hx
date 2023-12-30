package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroChoice") extern class PDFAcroChoice extends PDFAcroTerminal {
	function setValues(values:Array<ts.AnyOf2<PDFHexString, PDFString>>):Void;
	function valuesAreValid(values:Array<ts.AnyOf2<PDFHexString, PDFString>>):Bool;
	function updateSelectedIndices(values:Array<ts.AnyOf2<PDFHexString, PDFString>>):Void;
	function getValues():Array<ts.AnyOf2<PDFHexString, PDFString>>;
	function Opt():Null<ts.AnyOf3<PDFHexString, PDFArray, PDFString>>;
	function setOptions(options:Array<{ var value : ts.AnyOf2<PDFHexString, PDFString>; @:optional var display : ts.AnyOf2<PDFHexString, PDFString>; }>):Void;
	function getOptions():Array<{
		var value : ts.AnyOf2<PDFHexString, PDFString>;
		var display : ts.AnyOf2<PDFHexString, PDFString>;
	}>;
	static var prototype : PDFAcroChoice;
}