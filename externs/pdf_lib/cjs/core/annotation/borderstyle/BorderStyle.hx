package pdf_lib.cjs.core.annotation.borderstyle;

@:jsRequire("pdf-lib/cjs/core/annotation/BorderStyle", "default") extern class BorderStyle {
	private function new(dict:pdf_lib.PDFDict);
	final dict : pdf_lib.PDFDict;
	function W():Null<pdf_lib.PDFNumber>;
	function getWidth():Null<Float>;
	function setWidth(width:Float):Void;
	static var prototype : BorderStyle;
	static dynamic function fromDict(dict:pdf_lib.PDFDict):BorderStyle;
}