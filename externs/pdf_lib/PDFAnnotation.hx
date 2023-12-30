package pdf_lib;

@:jsRequire("pdf-lib", "PDFAnnotation") extern class PDFAnnotation {
	private function new(dict:PDFDict);
	final dict : PDFDict;
	function Rect():Null<PDFArray>;
	function AP():Null<PDFDict>;
	function F():Null<PDFNumber>;
	function getRectangle():{
		var x : Float;
		var y : Float;
		var width : Float;
		var height : Float;
	};
	function setRectangle(rect:{ var x : Float; var y : Float; var width : Float; var height : Float; }):Void;
	function getAppearanceState():Null<PDFName>;
	function setAppearanceState(state:PDFName):Void;
	function setAppearances(appearances:PDFDict):Void;
	function ensureAP():PDFDict;
	function getNormalAppearance():ts.AnyOf2<PDFRef, PDFDict>;
	function setNormalAppearance(appearance:ts.AnyOf2<PDFRef, PDFDict>):Void;
	function setRolloverAppearance(appearance:ts.AnyOf2<PDFRef, PDFDict>):Void;
	function setDownAppearance(appearance:ts.AnyOf2<PDFRef, PDFDict>):Void;
	function removeRolloverAppearance():Void;
	function removeDownAppearance():Void;
	function getAppearances():Null<{
		var normal : ts.AnyOf2<PDFDict, PDFStream>;
		@:optional
		var rollover : ts.AnyOf2<PDFDict, PDFStream>;
		@:optional
		var down : ts.AnyOf2<PDFDict, PDFStream>;
	}>;
	function getFlags():Float;
	function setFlags(flags:Float):Void;
	function hasFlag(flag:Float):Bool;
	function setFlag(flag:Float):Void;
	function clearFlag(flag:Float):Void;
	function setFlagTo(flag:Float, enable:Bool):Void;
	static var prototype : PDFAnnotation;
	static dynamic function fromDict(dict:PDFDict):PDFAnnotation;
}