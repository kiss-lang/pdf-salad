package pdf_lib.cjs.types.fontkit;

/**
	Glyph objects represent a glyph in the font. They have various properties for
	accessing metrics and the actual vector path the glyph represents, and
	methods for rendering the glyph to a graphics context.
	
	You do not create glyph objects directly. They are created by various methods
	on the Font object. There are several subclasses of the base Glyph class
	internally that may be returned depending on the font format, but they all
	include the following API.
**/
typedef Glyph = {
	var id : Float;
	/**
		An array of unicode code points that are represented by this glyph. There
		can be multiple code points in the case of ligatures and other glyphs that
		represent multiple visual characters.
	**/
	var codePoints : Array<Float>;
	var path : Path;
	/**
		The Glyph’s bounding box, i.e. the rectangle that encloses the glyph
		outline as tightly as possible.
	**/
	var bbox : BoundingBox;
	/**
		The Glyph’s control box. This is often the same as the bounding box, but is
		faster to compute. Because of the way bezier curves are defined, some of
		the control points can be outside of the bounding box. Where bbox takes
		this into account, cbox does not. Thus, cbox is less accurate, but faster
		to compute.
	**/
	var cbox : BoundingBox;
	var advanceWidth : Float;
	/**
		For COLR glyphs, which are vector based, this returns an array of objects
		representing the glyphs and colors for each layer in render order.
	**/
	var layers : Array<Dynamic>;
	/**
		Renders the glyph to the given graphics context, at the specified
		font size.
	**/
	function render(context:Dynamic, size:Float):Void;
	/**
		For SBIX glyphs, which are bitmap based, this returns an object containing
		some properties about the image, along with the image data itself
		(usually PNG).
	**/
	function getImageForSize(size:Float):js.lib.Uint8Array;
};