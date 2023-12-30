package pdf_lib;

@:jsRequire("pdf-lib", "AppearanceCharacteristics") extern class AppearanceCharacteristics {
	private function new(dict:PDFDict);
	final dict : PDFDict;
	function R():Null<PDFNumber>;
	function BC():Null<PDFArray>;
	function BG():Null<PDFArray>;
	function CA():Null<ts.AnyOf2<PDFHexString, PDFString>>;
	function RC():Null<ts.AnyOf2<PDFHexString, PDFString>>;
	function AC():Null<ts.AnyOf2<PDFHexString, PDFString>>;
	function getRotation():Null<Float>;
	function getBorderColor():Null<Array<Float>>;
	function getBackgroundColor():Null<Array<Float>>;
	function getCaptions():{
		@:optional
		var normal : String;
		@:optional
		var rollover : String;
		@:optional
		var down : String;
	};
	function setRotation(rotation:Float):Void;
	function setBorderColor(color:Array<Float>):Void;
	function setBackgroundColor(color:Array<Float>):Void;
	function setCaptions(captions:{ var normal : String; @:optional var rollover : String; @:optional var down : String; }):Void;
	static var prototype : AppearanceCharacteristics;
	static dynamic function fromDict(dict:PDFDict):AppearanceCharacteristics;
}