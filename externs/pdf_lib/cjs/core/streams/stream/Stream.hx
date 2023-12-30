package pdf_lib.cjs.core.streams.stream;

@:jsRequire("pdf-lib/cjs/core/streams/Stream", "default") extern class Stream {
	function new(buffer:js.lib.Uint8Array, ?start:Float, ?length:Float);
	private var bytes : Dynamic;
	private var start : Dynamic;
	private var pos : Dynamic;
	private var end : Dynamic;
	final length : Float;
	final isEmpty : Bool;
	function getByte():Float;
	function getUint16():Float;
	function getInt32():Float;
	function getBytes(length:Float, ?forceClamped:Bool):ts.AnyOf2<js.lib.Uint8Array, js.lib.Uint8ClampedArray>;
	function peekByte():Float;
	function peekBytes(length:Float, ?forceClamped:Bool):ts.AnyOf2<js.lib.Uint8Array, js.lib.Uint8ClampedArray>;
	function skip(n:Float):Void;
	function reset():Void;
	function moveStart():Void;
	function makeSubStream(start:Float, length:Float):Stream;
	function decode():js.lib.Uint8Array;
	static var prototype : Stream;
}