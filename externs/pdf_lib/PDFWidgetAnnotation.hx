package pdf_lib;

@:jsRequire("pdf-lib", "PDFWidgetAnnotation") extern class PDFWidgetAnnotation extends PDFAnnotation {
	function MK():Null<PDFDict>;
	function BS():Null<PDFDict>;
	function DA():Null<ts.AnyOf2<PDFHexString, PDFString>>;
	function P():Null<PDFRef>;
	function setP(page:PDFRef):Void;
	function setDefaultAppearance(appearance:String):Void;
	function getDefaultAppearance():Null<String>;
	function getAppearanceCharacteristics():Null<AppearanceCharacteristics>;
	function getOrCreateAppearanceCharacteristics():AppearanceCharacteristics;
	function getBorderStyle():Null<pdf_lib.cjs.core.annotation.borderstyle.BorderStyle>;
	function getOrCreateBorderStyle():pdf_lib.cjs.core.annotation.borderstyle.BorderStyle;
	function getOnValue():Null<PDFName>;
	static var prototype : PDFWidgetAnnotation;
	static dynamic function fromDict(dict:PDFDict):PDFWidgetAnnotation;
	static dynamic function create(context:PDFContext, parent:PDFRef):PDFWidgetAnnotation;
}