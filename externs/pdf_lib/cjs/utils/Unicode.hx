package pdf_lib.cjs.utils;

@:jsRequire("pdf-lib/cjs/utils/unicode") @valueModuleOnly extern class Unicode {
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
}