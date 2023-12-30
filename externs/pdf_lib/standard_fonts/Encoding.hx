package pdf_lib.standard_fonts;

@jsInaccessible extern class Encoding {
	function new(name:EncodingNames, unicodeMappings:UnicodeMappings);
	var name : EncodingNames;
	var supportedCodePoints : Array<Float>;
	private var unicodeMappings : Dynamic;
	dynamic function canEncodeUnicodeCodePoint(codePoint:Float):Bool;
	dynamic function encodeUnicodeCodePoint(codePoint:Float):{
		var code : Float;
		var name : String;
	};
	static var prototype : Encoding;
}