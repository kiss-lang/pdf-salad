package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroField") extern class PDFAcroField {
	private function new(dict:PDFDict, ref:PDFRef);
	final dict : PDFDict;
	final ref : PDFRef;
	function T():Null<ts.AnyOf2<PDFHexString, PDFString>>;
	function Ff():Null<PDFNumber>;
	function V():Null<PDFObject>;
	function Kids():Null<PDFArray>;
	function DA():Null<ts.AnyOf2<PDFHexString, PDFString>>;
	function setKids(kids:Array<PDFObject>):Void;
	function getParent():Null<PDFAcroField>;
	function setParent(parent:Null<PDFRef>):Void;
	function getFullyQualifiedName():Null<String>;
	function getPartialName():Null<String>;
	function setPartialName(partialName:Null<String>):Void;
	function setDefaultAppearance(appearance:String):Void;
	function getDefaultAppearance():Null<String>;
	function setFontSize(fontSize:Float):Void;
	function getFlags():Float;
	function setFlags(flags:Float):Void;
	function hasFlag(flag:Float):Bool;
	function setFlag(flag:Float):Void;
	function clearFlag(flag:Float):Void;
	function setFlagTo(flag:Float, enable:Bool):Void;
	function getInheritableAttribute(name:PDFName):Null<PDFObject>;
	function ascend(visitor:(node:PDFAcroField) -> Dynamic):Void;
	static var prototype : PDFAcroField;
}