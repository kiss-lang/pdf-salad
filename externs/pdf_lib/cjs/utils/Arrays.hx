package pdf_lib.cjs.utils;

@:jsRequire("pdf-lib/cjs/utils/arrays") @valueModuleOnly extern class Arrays {
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
}