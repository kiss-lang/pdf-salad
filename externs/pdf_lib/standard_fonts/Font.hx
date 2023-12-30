package pdf_lib.standard_fonts;

@:jsRequire("@pdf-lib/standard-fonts", "Font") extern class Font {
	private function new();
	var Comment : String;
	var FontName : String;
	var FullName : String;
	var FamilyName : String;
	var Weight : String;
	var CharacterSet : String;
	var Version : String;
	var Notice : String;
	var EncodingScheme : String;
	var ItalicAngle : Float;
	var UnderlinePosition : Float;
	var UnderlineThickness : Float;
	var CapHeight : ts.AnyOf2<Float, ts.Undefined>;
	var XHeight : ts.AnyOf2<Float, ts.Undefined>;
	var Ascender : ts.AnyOf2<Float, ts.Undefined>;
	var Descender : ts.AnyOf2<Float, ts.Undefined>;
	var StdHW : Float;
	var StdVW : Float;
	var IsFixedPitch : Bool;
	/**
		[llx lly urx ury]:
		   Font bounding box where llx, lly, urx, and ury are all numbers.
	**/
	var FontBBox : ts.Tuple4<Float, Float, Float, Float>;
	var CharMetrics : Array<ICharMetrics>;
	var KernPairs : Array<IKernPair>;
	private var CharWidths : Dynamic;
	private var KernPairXAmounts : Dynamic;
	dynamic function getWidthOfGlyph(glyphName:String):ts.AnyOf2<Float, ts.Undefined>;
	dynamic function getXAxisKerningForPair(leftGlyphName:String, rightGlyphName:String):ts.AnyOf2<Float, ts.Undefined>;
	static var prototype : Font;
	static dynamic function load(fontName:IFontNames):Font;
}