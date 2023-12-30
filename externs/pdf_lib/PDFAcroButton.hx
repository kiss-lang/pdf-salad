package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroButton") extern class PDFAcroButton extends PDFAcroTerminal {
	function Opt():Null<ts.AnyOf3<PDFHexString, PDFArray, PDFString>>;
	function setOpt(opt:Array<PDFObject>):Void;
	function getExportValues():Null<Array<ts.AnyOf2<PDFHexString, PDFString>>>;
	function removeExportValue(idx:Float):Void;
	function normalizeExportValues():Void;
	/**
		Reuses existing opt if one exists with the same value (assuming
		`useExistingIdx` is `true`). Returns index of existing (or new) opt.
	**/
	function addOpt(opt:ts.AnyOf2<PDFHexString, PDFString>, useExistingOptIdx:Bool):Float;
	function addWidgetWithOpt(widget:PDFRef, opt:ts.AnyOf2<PDFHexString, PDFString>, useExistingOptIdx:Bool):PDFName;
	static var prototype : PDFAcroButton;
}