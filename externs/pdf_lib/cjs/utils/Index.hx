package pdf_lib.cjs.utils;

@:jsRequire("pdf-lib/cjs/utils/index") @valueModuleOnly extern class Index {
	static function last<T>(array:Array<T>):T;
	static function typedArrayFor(value:ts.AnyOf2<String, js.lib.Uint8Array>):js.lib.Uint8Array;
	static function mergeIntoTypedArray(arrays:haxe.extern.Rest<ts.AnyOf2<String, js.lib.Uint8Array>>):js.lib.Uint8Array;
	static function mergeUint8Arrays(arrays:Array<js.lib.Uint8Array>):js.lib.Uint8Array;
	static function arrayAsString(array:ts.AnyOf2<Array<Float>, js.lib.Uint8Array>):String;
	static function byAscendingId<T>(a:T, b:T):Float;
	static function sortedUniq<T>(array:Array<T>, indexer:(elem:T) -> Dynamic):Array<T>;
	static function reverseArray(array:js.lib.Uint8Array):js.lib.Uint8Array;
	static function sum(array:ts.AnyOf2<Array<Float>, js.lib.Uint8Array>):Float;
	static function range(start:Float, end:Float):Array<Float>;
	static function pluckIndices<T>(arr:Array<T>, indices:Array<Float>):Array<T>;
	static function canBeConvertedToUint8Array(input:Dynamic):Bool;
	static function toUint8Array(input:ts.AnyOf3<String, js.lib.Uint8Array, js.lib.ArrayBuffer>):js.lib.Uint8Array;
	/**
		Returns a Promise that resolves after at least one tick of the
		Macro Task Queue occurs.
	**/
	static function waitForTick():js.lib.Promise<ts.Undefined>;
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
	/**
		Encodes a string to UTF-8.
	**/
	static function utf8Encode(input:String, ?byteOrderMark:Bool):js.lib.Uint8Array;
	/**
		Encodes a string to UTF-16.
	**/
	static function utf16Encode(input:String, ?byteOrderMark:Bool):js.lib.Uint16Array;
	/**
		Returns `true` if the `codePoint` is within the
		Basic Multilingual Plane (BMP). Code points inside the BMP are not encoded
		with surrogate pairs.
	**/
	static function isWithinBMP(codePoint:Float):Bool;
	/**
		Returns `true` if the given `codePoint` is valid and must be represented
		with a surrogate pair when encoded.
	**/
	static function hasSurrogates(codePoint:Float):Bool;
	static function highSurrogate(codePoint:Float):Float;
	static function lowSurrogate(codePoint:Float):Float;
	/**
		Decodes a Uint8Array of data to a string using UTF-16.
		
		Note that this function attempts to recover from erronous input by
		inserting the replacement character (�) to mark invalid code points
		and surrogate pairs.
	**/
	static function utf16Decode(input:js.lib.Uint8Array, ?byteOrderMark:Bool):String;
	static function hasUtf16BOM(bytes:js.lib.Uint8Array):Bool;
	/**
		Converts a number to its string representation in decimal. This function
		differs from simply converting a number to a string with `.toString()`
		because this function's output string will **not** contain exponential
		notation.
		
		Credit: https://stackoverflow.com/a/46545519
	**/
	static function numberToString(num:Float):String;
	static function sizeInBytes(n:Float):Float;
	/**
		Converts a number into its constituent bytes and returns them as
		a number[].
		
		Returns most significant byte as first element in array. It may be necessary
		to call .reverse() to get the bits in the desired order.
		
		Example:
		   bytesFor(0x02A41E) => [ 0b10, 0b10100100, 0b11110 ]
		
		Credit for algorithm: https://stackoverflow.com/a/1936865
	**/
	static function bytesFor(n:Float):js.lib.Uint8Array;
	static function error(msg:String):Any;
	static function encodeToBase64(bytes:js.lib.Uint8Array):String;
	static function decodeFromBase64(base64:String):js.lib.Uint8Array;
	/**
		If the `dataUri` input is a data URI, then the data URI prefix must not be
		longer than 100 characters, or this function will fail to decode it.
	**/
	static function decodeFromBase64DataUri(dataUri:String):js.lib.Uint8Array;
	static function values(obj:Dynamic):Array<Dynamic>;
	static final StandardFontValues : Array<Dynamic>;
	static function isStandardFont(input:Dynamic):Bool;
	static function rectanglesAreEqual(a:{ var x : Float; var y : Float; var width : Float; var height : Float; }, b:{ var x : Float; var y : Float; var width : Float; var height : Float; }):Bool;
	static function backtick(val:Dynamic):String;
	static function singleQuote(val:Dynamic):String;
	static function createValueErrorMsg(value:Dynamic, valueName:String, values:Array<pdf_lib.Primitive>):String;
	static function assertIsOneOf(value:Dynamic, valueName:String, allowedValues:ts.AnyOf2<Array<pdf_lib.Primitive>, haxe.DynamicAccess<pdf_lib.Primitive>>):Void;
	static function assertIsOneOfOrUndefined(value:Dynamic, valueName:String, allowedValues:ts.AnyOf2<Array<pdf_lib.Primitive>, haxe.DynamicAccess<pdf_lib.Primitive>>):Void;
	static function assertIsSubset(values:Array<Dynamic>, valueName:String, allowedValues:ts.AnyOf2<Array<pdf_lib.Primitive>, haxe.DynamicAccess<pdf_lib.Primitive>>):Void;
	static function getType(val:Dynamic):Dynamic;
	static function isType(value:Dynamic, type:pdf_lib.TypeDescriptor):Bool;
	static function createTypeErrorMsg(value:Dynamic, valueName:String, types:Array<pdf_lib.TypeDescriptor>):String;
	static function assertIs(value:Dynamic, valueName:String, types:Array<pdf_lib.TypeDescriptor>):Void;
	static function assertOrUndefined(value:Dynamic, valueName:String, types:Array<pdf_lib.TypeDescriptor>):Void;
	static function assertEachIs(values:Array<Dynamic>, valueName:String, types:Array<pdf_lib.TypeDescriptor>):Void;
	static function assertRange(value:Dynamic, valueName:String, min:Float, max:Float):Void;
	static function assertRangeOrUndefined(value:Dynamic, valueName:String, min:Float, max:Float):Void;
	static function assertMultiple(value:Dynamic, valueName:String, multiplier:Float):Void;
	static function assertInteger(value:Dynamic, valueName:String):Void;
	static function assertPositive(value:Float, valueName:String):Void;
	/**
		Decode a byte array into a string using PDFDocEncoding.
	**/
	static function pdfDocEncodingDecode(bytes:js.lib.Uint8Array):String;
}