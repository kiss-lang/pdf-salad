package pdf_lib.cjs.utils;

@:jsRequire("pdf-lib/cjs/utils/strings") @valueModuleOnly extern class Strings {
	static function toCharCode(character:String):Float;
	static function toCodePoint(character:String):Null<Float>;
	static function toHexStringOfMinLength(num:Float, minLength:Float):String;
	static function toHexString(num:Float):String;
	static function charFromCode(code:Float):String;
	static function charFromHexCode(hex:String):String;
	static function padStart(value:String, length:Float, padChar:String):String;
	static function copyStringIntoBuffer(str:String, buffer:js.lib.Uint8Array, offset:Float):Float;
	static function addRandomSuffix(prefix:String, ?suffixLength:Float):String;
	static function escapeRegExp(str:String):String;
	static function cleanText(text:String):String;
	static final escapedNewlineChars : Array<String>;
	static final newlineChars : Array<String>;
	static function isNewlineChar(text:String):Bool;
	static function lineSplit(text:String):Array<String>;
	static function mergeLines(text:String):String;
	static function charAtIndex(text:String, index:Float):ts.Tuple2<String, Float>;
	static function charSplit(text:String):Array<String>;
	static function breakTextIntoLines(text:String, wordBreaks:Array<String>, maxWidth:Float, computeWidthOfText:(t:String) -> Float):Array<String>;
	static function parseDate(dateStr:String):Null<js.lib.Date>;
	static function findLastMatch(value:String, regex:js.lib.RegExp):{
		var match : Null<js.lib.RegExpMatchArray>;
		var pos : Float;
	};
}