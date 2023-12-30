package pdf_lib.cjs.core.streams.stream;

typedef StreamType = {
	var isEmpty : Bool;
	function getByte():Float;
	function getUint16():Float;
	function getInt32():Float;
	function getBytes(length:Float, ?forceClamped:Bool):ts.AnyOf2<js.lib.Uint8Array, js.lib.Uint8ClampedArray>;
	function peekByte():Float;
	function peekBytes(length:Float, ?forceClamped:Bool):ts.AnyOf2<js.lib.Uint8Array, js.lib.Uint8ClampedArray>;
	function skip(n:Float):Void;
	function reset():Void;
	function makeSubStream(start:Float, length:Float):StreamType;
	function decode():js.lib.Uint8Array;
};