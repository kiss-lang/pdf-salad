package pdf_lib.cjs.utils;

@:jsRequire("pdf-lib/cjs/utils/base64") @valueModuleOnly extern class Base64 {
	static function encodeToBase64(bytes:js.lib.Uint8Array):String;
	static function decodeFromBase64(base64:String):js.lib.Uint8Array;
	/**
		If the `dataUri` input is a data URI, then the data URI prefix must not be
		longer than 100 characters, or this function will fail to decode it.
	**/
	static function decodeFromBase64DataUri(dataUri:String):js.lib.Uint8Array;
}