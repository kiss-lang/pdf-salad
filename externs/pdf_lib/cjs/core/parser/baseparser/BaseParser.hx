package pdf_lib.cjs.core.parser.baseparser;

@:jsRequire("pdf-lib/cjs/core/parser/BaseParser", "default") extern class BaseParser {
	function new(bytes:pdf_lib.cjs.core.parser.bytestream.ByteStream, ?capNumbers:Bool);
	private final bytes : pdf_lib.cjs.core.parser.bytestream.ByteStream;
	private final capNumbers : Bool;
	private function parseRawInt():Float;
	private function parseRawNumber():Float;
	private function skipWhitespace():Void;
	private function skipLine():Void;
	private function skipComment():Bool;
	private function skipWhitespaceAndComments():Void;
	private function matchKeyword(keyword:Array<Float>):Bool;
	static var prototype : BaseParser;
}