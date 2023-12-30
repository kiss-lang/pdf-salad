package pdf_lib.cjs.types.fontkit;

/**
	There are several different types of font objects that are returned by
	fontkit depending on the font format. They all inherit from the TTFFont class
	and have the same public API.
**/
typedef Font = {
	var postscriptName : Null<String>;
	var fullName : Null<String>;
	var familyName : Null<String>;
	var subfamilyName : Null<String>;
	var copyright : Null<String>;
	var version : Null<String>;
	var unitsPerEm : Float;
	var ascent : Float;
	var descent : Float;
	var lineGap : Float;
	var underlinePosition : Float;
	var underlineThickness : Float;
	var italicAngle : Float;
	var capHeight : Float;
	var xHeight : Float;
	var bbox : BoundingBox;
	var numGlyphs : Float;
	var characterSet : Array<Float>;
	var availableFeatures : Array<ts.AnyOf2<String, Float>>;
	var cff : Dynamic;
	@:native("OS/2")
	var OS_2 : {
		var sFamilyClass : Float;
	};
	var head : {
		var macStyle : {
			var italic : Bool;
		};
	};
	var post : {
		var isFixedPitch : Bool;
	};
	/**
		Maps a single unicode code point (number) to a Glyph object.
		Does not perform any advanced substitutions (there is no context to do so).
	**/
	function glyphForCodePoint(codePoint:Float):Glyph;
	/**
		Returns whether there is glyph in the font for the given
		unicode code point.
	**/
	function hasGlyphForCodePoint(codePoint:Float):Bool;
	/**
		This method returns an array of Glyph objects for the given string.
		This is only a one-to-one mapping from characters to glyphs. For most uses,
		you should use Font.layout, which provides a much more advanced mapping
		supporting AAT and OpenType shaping.
	**/
	function glyphsForString(str:String):Array<Glyph>;
	/**
		Returns the advance width (described above) for a single glyph id.
	**/
	function widthOfGlyph(glyphId:Float):Float;
	/**
		This method returns a GlyphRun object, which includes an array of Glyphs
		and GlyphPositions for the given string. Glyph objects are described below.
		GlyphPosition objects include 4 properties: xAdvance, yAdvance, xOffset,
		and yOffset.
		
		The features parameter is an array of OpenType feature tags to be applied
		in addition to the default set. If this is an AAT font, the OpenType
		feature tags are mapped to AAT features.
	**/
	function layout(str:String, ?features:ts.AnyOf2<TypeFeatures, Array<ts.AnyOf2<String, Float>>>):GlyphRun;
	/**
		Returns a glyph object for the given glyph id. You can pass the array of
		code points this glyph represents for your use later, and it will be
		stored in the glyph object.
	**/
	function getGlyph(glyphId:Float, ?codePoints:Array<Float>):Glyph;
	/**
		Returns a Subset object for this font.
	**/
	function createSubset():Subset;
};